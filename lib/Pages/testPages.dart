import 'package:flutter/material.dart';
import 'chapterReveiwScreen.dart';

class LinearProgressIndicatorApp extends StatefulWidget {
  final int chapterNumber;

  const LinearProgressIndicatorApp({super.key, required this.chapterNumber});
  @override
  State<StatefulWidget> createState() {
    return LinearProgressIndicatorAppState();
  }
}

class LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp> {
  bool _loading = true;  // Set to true initially to indicate loading state
  final List<Map<String, dynamic>> _questions = [];
  int _currentQuestion = 0;
  int _selectedOptionIndex = -1;
  bool _answered = false;


  Widget _buildOption(String optionText, int index) {
    Color buttonColor = Color(0xFFE0E0E0);
    double opacity = 1.0;

    if (_answered) {
      if (index == _questions[_currentQuestion]['correctOption']) {
        buttonColor = Colors.green;
      } else if (index == _selectedOptionIndex) {
        buttonColor = Colors.red;
      } else {
        // Making other options look faded
        opacity = 0.5;
      }
    }

    return Opacity(
      opacity: opacity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0), // Adjust the spacing here
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (!_answered) {
                _selectedOptionIndex = index;
                _answered = true;
              }
            });
          },
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            padding: EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(width: 0.50),
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      String.fromCharCode(index + 65) + '.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      optionText,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Traffic Rules Quiz"),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _loading = false;
                _currentQuestion = 0;
                _selectedOptionIndex = -1;
                _answered = false;
              });
            },
            child: Text(
              "End Test",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: _loading
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LinearProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor:
                new AlwaysStoppedAnimation<Color>(Colors.lightGreenAccent),
                value: (_currentQuestion + 1) / _questions.length,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Question ${_currentQuestion + 1} of ${_questions.length}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _questions[_currentQuestion]['question'],
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (var i = 0;
                  i < _questions[_currentQuestion]['options'].length;
                  i++)
                    _buildOption(
                      _questions[_currentQuestion]['options'][i],
                      i,
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      int correctAnswers = 0;
                      for (var question in _questions) {
                        if (question['correctOption'] ==
                            _selectedOptionIndex) {
                          correctAnswers++;
                        }
                      }
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Quiz Score"),
                            content: Text(
                              "You got $correctAnswers out of ${_questions.length} questions correct.",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("Check Score"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_currentQuestion < _questions.length - 1) {
                          _currentQuestion++;
                          _selectedOptionIndex = -1;
                          _answered = false;
                        } else {
                          _loading = false;
                        }
                      });
                    },
                    child: Text(_currentQuestion < _questions.length - 1
                        ? 'Next Question'
                        : 'Retake Quiz'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChapterReviewPage(),
                      ),
                    );
                  },
                  child: Text("Finish Quiz"),
                ),
              ),
            ],
          )
              : ElevatedButton(
            onPressed: () {
              setState(() {
                _loading = true;
                _currentQuestion = 0;
                _selectedOptionIndex = -1;
                _answered = false;
              });
            },
            child: Text("Start Quiz"),
          ),
        ),
      ),
      bottomNavigationBar: _loading && _currentQuestion == _questions.length
          ? Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizResultPage(),
              ),
            );
          },
          child: Text("Show Result"),
        ),
      )
          : null,
    );
  }
}


class QuizResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Results"),
      ),
      body: Center(
        child: Text("Quiz Results will be displayed here."),
      ),
    );
  }
}