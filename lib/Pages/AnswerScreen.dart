import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth
import 'package:roadschool/Pages/chapterReveiwScreen.dart';

class AnswerSheetPage extends StatefulWidget {
  final String chapterId;
  final List<Map<String, dynamic>> questions;
  AnswerSheetPage({required this.chapterId, required this.questions});

  @override
  _AnswerSheetPageState createState() => _AnswerSheetPageState();
}

class _AnswerSheetPageState extends State<AnswerSheetPage> {
  int _currentQuestionIndex = 0;
  List<Map<String, dynamic>> _questions = [];
  List<Map<String, dynamic>> _answers = [];
  List<Map<String, dynamic>> _images = [];
  bool _showAnswer = false;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('chapters')
        .doc(widget.chapterId)
        .collection('questions')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          _questions.add({'question': doc['Question']});
          _answers.add({'correctAnswer': doc['Correct Answer']});
          _images.add({'image': doc['image']});
        });
      });
    });
  }
  void _showNextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _showAnswer = false;
      }
    });
  }

  void _showPreviousQuestion() {
    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        _showAnswer = false;
      }
    });
  }

  void _toggleShowAnswer() {
    setState(() {
      _showAnswer = !_showAnswer;
    });
  }

  void _finishQuiz() async {
    // Update completed chapters in Firestore
    updateUserProgress(widget.chapterId);

    // Navigate to ChapterReviewPage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ChapterReviewPage()),
    );
  }

  // Function to update user progress in Firestore
  void updateUserProgress(String chapterId) async {
    final User? user = FirebaseAuth.instance.currentUser;
    final String userId = user != null ? user.uid : 'no-user';

    // Update Firestore with the completed chapter
    await FirebaseFirestore.instance
        .collection('UserProgress')
        .doc(userId)
        .set({
      'completedChapters': FieldValue.arrayUnion([chapterId]),
    }, SetOptions(merge: true));
  }

  @override
  Widget build(BuildContext context) {
    double progress = (_currentQuestionIndex + 1) / (_questions.length + 1);
    print(_images[1]);
    print(widget.chapterId);
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 16),
            Stack(
              children: [
                // Existing Linear Progress Indicator with green progress color
                LinearProgressIndicator(
                  value: progress,
                  color: Colors.green,
                  backgroundColor: Colors.transparent,
                  minHeight: 27,
                ),
                // Existing Positioned widget for current position
                Positioned(
                  left: MediaQuery.of(context).size.width * progress,
                  child: Image.asset(
                    'assets/images/iconwtbg.png',
                    height: 32,
                    width: 40,
                  ),
                ),

                // New Positioned widget for flag at the end
                Positioned(
                  right: 0,
                  child: Image.asset(
                    'assets/images/flag.png', // Replace this with your flag image path
                    height: 27,
                    width: 40,
                  ),
                ),
                Container(
                  height: 29,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ))),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _images[_currentQuestionIndex]['image']!=""?Image.network(_images[_currentQuestionIndex]['image']):Padding(padding: EdgeInsets.all(5)),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _questions.isNotEmpty
                    ? _questions[_currentQuestionIndex]['question']
                    : 'Loading...',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),


            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: _toggleShowAnswer,
                child: Container(
                  decoration: BoxDecoration(
                    color: _showAnswer ? Colors.green : Colors.transparent,
                    border: Border.all(
                        color: _showAnswer ? Colors.black : Colors.green,
                        width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _showAnswer
                            ? (_answers.isNotEmpty
                            ? _answers[_currentQuestionIndex]
                        ['correctAnswer']
                            : 'Loading...')
                            : "Show Answer",
                        style: TextStyle(
                            color: _showAnswer ? Colors.black : Colors.green,
                            fontSize: _showAnswer ? 16 : 32),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _showPreviousQuestion,
                  child: const Text('Previous', style: TextStyle(color: Colors.black,),),
                ),
                SizedBox(width: 16),
                TextButton(
                  onPressed: _currentQuestionIndex == _questions.length - 1 ? _finishQuiz : _showNextQuestion,
                  child: Text(_currentQuestionIndex == _questions.length - 1 ? 'Finish' : 'Next', style: TextStyle(color: Colors.black,),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
