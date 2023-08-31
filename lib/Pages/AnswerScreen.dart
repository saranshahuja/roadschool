import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AnswerSheetPage extends StatefulWidget {
  final String chapterId;

  AnswerSheetPage({required this.chapterId});

  @override
  _AnswerSheetPageState createState() => _AnswerSheetPageState();
}

class _AnswerSheetPageState extends State<AnswerSheetPage> {
  int _currentQuestionIndex = 0;
  List<Map<String, dynamic>> _questions = [];
  List<Map<String, dynamic>> _answers = [];
  bool _showAnswer = false;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('chapters')
        .doc(widget.chapterId) // Using chapterId from constructor
        .collection('questions')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          _questions.add({'question': doc['Question']});
          _answers.add({'correctAnswer': doc['Correct Answer']});
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

  @override
  Widget build(BuildContext context) {
    double progress = (_currentQuestionIndex + 1) / (_questions.length + 1);
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Answer Sheet App'),
      ),
      body: Container(
        height: screenHeight,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 16),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  LinearProgressIndicator(
                    backgroundColor: Colors.transparent,
                    color: Colors.green,
                    value: progress,
                    minHeight: 27,
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * progress,
                    child: Image.asset(
                      'assets/images/iconwtbg.png',
                      height: 40,
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
                padding: EdgeInsets.all(8.0),
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
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: _showPreviousQuestion,
                    child: const Text(
                      'Previous',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: _showNextQuestion,
                    child: const Text('Next',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
