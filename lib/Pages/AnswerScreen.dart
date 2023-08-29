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

    return Scaffold(
      appBar: AppBar(
        title: Text('Answer Sheet App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 16),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                LinearProgressIndicator(
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _showAnswer
                  ? Text(
                _answers.isNotEmpty
                    ? _answers[_currentQuestionIndex]['correctAnswer']
                    : 'Loading...',
                style: TextStyle(fontSize: 16),
              )
                  : Container(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _toggleShowAnswer,
              child: Text(_showAnswer ? 'Hide Answer' : 'Show Answer'),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _showPreviousQuestion,
                  child: Text('Previous'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _showNextQuestion,
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
