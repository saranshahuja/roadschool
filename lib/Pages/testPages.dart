import 'package:flutter/material.dart';
import 'chapterReveiwScreen.dart';

class LinearProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LinearProgressIndicatorAppState();
  }
}

class LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp> {
  bool _loading = false;
  int _currentQuestion = 0;
  int _selectedOptionIndex = -1;
  bool _answered = false;

  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'What does a red traffic light mean?',
      'options': ['Stop', 'Go', 'Slow down', 'Turn left'],
      'correctOption': 0,
    },
    {
      'question': 'What should you do when you see a yield sign?',
      'options': [
        'Speed up',
        'Come to a complete stop',
        'Slow down and yield the right-of-way',
        'Honk your horn'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a yellow traffic light mean?',
      'options': [
        'Slow down and prepare to stop',
        'Speed up and cross the intersection quickly',
        'Stop immediately',
        'Change lanes'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What does a green traffic light mean?',
      'options': ['Stop', 'Yield', 'Go', 'Slow down'],
      'correctOption': 2,
    },
    {
      'question': 'What does a flashing red traffic light mean?',
      'options': [
        'Stop and proceed when safe',
        'Go without stopping',
        'Slow down and proceed with caution',
        'Make a U-turn'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What does a broken white line on the road mean?',
      'options': [
        'No passing in either direction',
        'Passing is allowed from one side',
        'Passing is allowed from both sides',
        'No parking'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What does a round traffic sign mean?',
      'options': [
        'Stop',
        'Yield',
        'Warning',
        'Speed limit'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a diamond-shaped traffic sign indicate?',
      'options': [
        'Construction zone',
        'School zone',
        'Railroad crossing',
        'No entry'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What should you do when an emergency vehicle is approaching with its lights and sirens on?',
      'options': [
        'Maintain your speed and position',
        'Pull over to the side and stop',
        'Honk your horn to alert the driver',
        'Speed up and get out of the way'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What does a rectangular blue sign indicate?',
      'options': [
        'Speed limit',
        'Exit or direction sign',
        'School zone',
        'Construction zone'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What is the maximum speed limit on highways in this area?',
      'options': [
        '55 mph',
        '65 mph',
        '70 mph',
        '75 mph'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What should you do when approaching a school bus with flashing red lights?',
      'options': [
        'Pass quickly on the left',
        'Slow down and proceed with caution',
        'Honk your horn to warn the children',
        'Speed up to pass before it stops'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What does a yellow diamond-shaped sign with black symbols indicate?',
      'options': [
        'School zone',
        'Construction zone',
        'Warning of deer crossing',
        'Railroad crossing'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a white rectangular sign with red letters indicate?',
      'options': [
        'No U-turn',
        'Stop',
        'No entry',
        'Yield'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What does a green arrow signal mean?',
      'options': [
        'Go in the direction of the arrow',
        'Yield to oncoming traffic',
        'Slow down and prepare to stop',
        'No left turn'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What should you do if you are driving and it starts to rain heavily?',
      'options': [
        'Turn on your high beams',
        'Speed up to get through the rain faster',
        'Slow down and increase your following distance',
        'Keep your windshield wipers off'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What should you do if you miss your exit on the highway?',
      'options': [
        'Back up on the highway',
        'Make a U-turn on the highway',
        'Continue to the next exit',
        'Stop and wait for assistance'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a solid white line at an intersection indicate?',
      'options': [
        'Stop and yield the right-of-way',
        'Slow down and proceed with caution',
        'Change lanes',
        'Go straight or turn'
      ],
      'correctOption': 3,
    },
    {
      'question': 'What should you do when you approach a flashing yellow traffic signal?',
      'options': [
        'Stop and wait for the light to turn green',
        'Slow down and proceed with caution',
        'Speed up to clear the intersection quickly',
        'Stop only if other vehicles are present'
      ],
      'correctOption': 1,
    },
  ];

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