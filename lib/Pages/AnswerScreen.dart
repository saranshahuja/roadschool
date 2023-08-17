import 'package:flutter/material.dart';

void main() {
  runApp(AnswerScreen());
}

class Question {
  final String question;
  final String answer;

  Question(this.question, this.answer);
}

class AnswerScreen extends StatelessWidget {
  final List<Question> questions = [
    Question('Question 1?', 'Answer 1.'),
    Question('Question 2?', 'Answer 2.'),
    // Add more questions...
    Question('Question 20?', 'Answer 20.'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionPage(questions),
    );
  }
}

class QuestionPage extends StatefulWidget {
  final List<Question> questions;

  QuestionPage(this.questions);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int _currentIndex = 0;
  bool _showAnswer = false;

  void _showNextQuestion() {
    if (_currentIndex < widget.questions.length - 1) {
      setState(() {
        _currentIndex++;
        _showAnswer = false;
      });
    }
  }

  void _showPreviousQuestion() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
        _showAnswer = false;
      });
    }
  }

  void _toggleAnswerVisibility() {
    setState(() {
      _showAnswer = !_showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${_currentIndex + 1}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.questions[_currentIndex].question,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            _showAnswer
                ? Text(
                    widget.questions[_currentIndex].answer,
                    style: TextStyle(fontSize: 16.0, color: Colors.green),
                  )
                : Container(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _toggleAnswerVisibility,
              child: Text('Show Answer'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Previous',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            _showPreviousQuestion();
          } else if (index == 1) {
            _showNextQuestion();
          }
        },
      ),
    );
  }
}


