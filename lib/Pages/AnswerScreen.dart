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
    "Question 1: What does a red traffic light mean ?",
    "Question 2: What should you do when you see a yield sign ?",
    "Question 3: What does a yellow traffic light mean ?",
    "Question 4: What does a yellow traffic light mean ?",
    "Question 5: What does a yellow traffic light mean ?",

    // ... Add more questions
  ];
  List<String> _answers = [
    "Answer 1. Stop",
    "Answer 2. Slow down and yield the right-of-way",
    "Answer 3. Slow down and prepare to stop",
    "Answer 4. Slow down and prepare to stop",
    "Answer 5. Slow down and prepare to stop",

    // ... Add more answers
  ];
  bool _showAnswer = false;

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
    double progress = (_currentQuestionIndex + 1) / _questions.length;

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
                  minHeight: 27, // Adjust this height as needed
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * progress,
                  child: Image.asset(
                    'assets/images/iconwtbg.png', // Provide your image path
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
                _questions[_currentQuestionIndex],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _showAnswer
                  ? Text(
                _answers[_currentQuestionIndex],
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