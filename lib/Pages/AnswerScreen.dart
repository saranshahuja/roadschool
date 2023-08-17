import 'package:flutter/material.dart';

void main() {
  runApp(AnswerSheet());
}

class Question {
  final String question;
  final String answer;
  final String imagePath;

  Question(this.question, this.answer, this.imagePath);
}

class AnswerSheet extends StatelessWidget {
  final List<Question> questions = [
    Question('What is your name?', 'My name is Akshit', 'assets/images/carque.png'),
    Question('Question 2?', 'Answer 2.', 'images/image2.jpg'),
    // Add more questions...
    Question('Question 20?', 'Answer 20.', 'images/image20.jpg'),
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
    double progress = (_currentIndex + 1) / widget.questions.length;

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
            SizedBox(height: 20.0),
            Container(
              height: 30.0,
              child: Stack(
                children: [
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                  Positioned(
                    left: progress * MediaQuery.of(context).size.width - 15.0,
                    child: Image.asset(
                      'assets/images/vector-5Rj.png',
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              widget.questions[_currentIndex].question,
              style: TextStyle(fontSize: 18.0),
            ),
            Image.asset(
              widget.questions[_currentIndex].imagePath,
              height: 350, // Set the desired height for the image
              fit: BoxFit.cover,
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