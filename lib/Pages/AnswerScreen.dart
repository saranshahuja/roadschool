import 'package:flutter/material.dart';

void main() {
  runApp(AnswerSheetApp());
}

class AnswerSheetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Answer Sheet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnswerSheetPage(),
    );
  }
}

class AnswerSheetPage extends StatefulWidget {
  @override
  _AnswerSheetPageState createState() => _AnswerSheetPageState();
}

class _AnswerSheetPageState extends State<AnswerSheetPage> {
  int _currentQuestionIndex = 0;
  List<String> _questions = [
    "Question 1: This sign means?",
    "Question 2: This sign means?",
    "Question 3: This sign means?",
  ];
  List<String> _answers = [
    "Answer 1. Two-way left turn lane.",
    "Answer 2. Playground nearby - drive with caution",
    "Answer 3. Railway crossing ahead - be prepared to stop",
  ];
  List<String> _imagePaths = [
    'assets/images/playground.png',
    'assets/images/railway.png',
    'assets/images/twoway.png',
  ];
  bool _showAnswer = false;

  void _showNextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _showAnswer = false;
      } else {
        // Display a message indicating completion
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Congratulations!'),
              content: Text('You have learned chapter 1.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/')); // Pop all routes until home screen
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
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
    double progress = (_currentQuestionIndex + 1) / _questions.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Chapter 7'),
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
                  color: Colors.green,
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * progress,
                  child: Image.asset(
                    'assets/images/iconwtbg.png',
                    height: 40,
                    width: 40,
                  ),
                ),
                Positioned(
                  top: 7,
                  right: 0,
                  child: Image.asset(
                    'assets/images/flag.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _questions[_currentQuestionIndex],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Image.asset(
              _imagePaths[_currentQuestionIndex % _imagePaths.length],
              height: 251,
              width: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _toggleShowAnswer,
              child: Text(_showAnswer ? 'Hide Answer' : 'Show Answer'),
            ),
            SizedBox(height: 16),
            Visibility(
              visible: _showAnswer,
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  _answers[_currentQuestionIndex],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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