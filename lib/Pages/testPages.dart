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
      'options': ['A. Stop', 'B. Go', 'C. Slow down', 'D. Turn left'],
      'correctOption': 0,
    },
    {
      'question': 'What should you do when you see a yield sign?',
      'options': [
        'A. Speed up',
        'B. Come to a complete stop',
        'C. Slow down and yield the right-of-way',
        'D. Honk your horn'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a yellow traffic light mean?',
      'options': [
        'A. Slow down and prepare to stop',
        'B. Speed up and cross the intersection quickly',
        'C. Stop immediately',
        'D. Change lanes'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What does a green traffic light mean?',
      'options': ['A. Stop', 'B. Yield', 'C. Go', 'D. Slow down'],
      'correctOption': 2,
    },
    {
      'question': 'What does a flashing red traffic light mean?',
      'options': [
        'A. Stop and proceed when safe',
        'B. Go without stopping',
        'C. Slow down and proceed with caution',
        'D. Make a U-turn'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What does a broken white line on the road mean?',
      'options': [
        'A. No passing in either direction',
        'B. Passing is allowed from one side',
        'C. Passing is allowed from both sides',
        'D. No parking'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What does a round traffic sign mean?',
      'options': [
        'A. Stop',
        'B. Yield',
        'C. Warning',
        'D. Speed limit'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a diamond-shaped traffic sign indicate?',
      'options': [
        'A. Construction zone',
        'B. School zone',
        'C. Railroad crossing',
        'D. No entry'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What should you do when an emergency vehicle is approaching with its lights and sirens on?',
      'options': [
        'A. Maintain your speed and position',
        'B. Pull over to the side and stop',
        'C. Honk your horn to alert the driver',
        'D. Speed up and get out of the way'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What does a rectangular blue sign indicate?',
      'options': [
        'A. Speed limit',
        'B. Exit or direction sign',
        'C. School zone',
        'D. Construction zone'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What is the maximum speed limit on highways in this area?',
      'options': [
        'A. 55 mph',
        'B. 65 mph',
        'C. 70 mph',
        'D. 75 mph'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What should you do when approaching a school bus with flashing red lights?',
      'options': [
        'A. Pass quickly on the left',
        'B. Slow down and proceed with caution',
        'C. Honk your horn to warn the children',
        'D. Speed up to pass before it stops'
      ],
      'correctOption': 1,
    },
    {
      'question': 'What does a yellow diamond-shaped sign with black symbols indicate?',
      'options': [
        'A. School zone',
        'B. Construction zone',
        'C. Warning of deer crossing',
        'D. Railroad crossing'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a white rectangular sign with red letters indicate?',
      'options': [
        'A. No U-turn',
        'B. Stop',
        'C. No entry',
        'D. Yield'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What does a green arrow signal mean?',
      'options': [
        'A. Go in the direction of the arrow',
        'B. Yield to oncoming traffic',
        'C. Slow down and prepare to stop',
        'D. No left turn'
      ],
      'correctOption': 0,
    },
    {
      'question': 'What should you do if you are driving and it starts to rain heavily?',
      'options': [
        'A. Turn on your high beams',
        'B. Speed up to get through the rain faster',
        'C. Slow down and increase your following distance',
        'D. Keep your windshield wipers off'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What should you do if you miss your exit on the highway?',
      'options': [
        'A. Back up on the highway',
        'B. Make a U-turn on the highway',
        'C. Continue to the next exit',
        'D. Stop and wait for assistance'
      ],
      'correctOption': 2,
    },
    {
      'question': 'What does a solid white line at an intersection indicate?',
      'options': [
        'A. Stop and yield the right-of-way',
        'B. Slow down and proceed with caution',
        'C. Change lanes',
        'D. Go straight or turn'
      ],
      'correctOption': 3,
    },
    {
      'question': 'What should you do when you approach a flashing yellow traffic signal?',
      'options': [
        'A. Stop and wait for the light to turn green',
        'B. Slow down and proceed with caution',
        'C. Speed up to clear the intersection quickly',
        'D. Stop only if other vehicles are present'
      ],
      'correctOption': 1,
    },
  ];

  Widget _buildOption(String optionText, int index, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedOptionIndex = index;
            _questions[_currentQuestion]['selectedOption'] = index; // Store the selected option for scoring
            _answered = true;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(optionText),
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
                color: Colors.red, // Set the text color to red
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LinearProgressIndicator(
                backgroundColor: Colors.cyanAccent,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
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
                  for (var i = 0; i < _questions[_currentQuestion]['options'].length; i++)
                    if (_answered) ...[
                      if (_questions[_currentQuestion]['correctOption'] == i)
                        _buildOption(
                          _questions[_currentQuestion]['options'][i],
                          i,
                          Colors.green,
                        ),
                      if (_selectedOptionIndex == i &&
                          _questions[_currentQuestion]['correctOption'] != i)
                        _buildOption(
                          _questions[_currentQuestion]['options'][i],
                          i,
                          Colors.red,
                        ),
                    ] else ...[
                      _buildOption(
                        _questions[_currentQuestion]['options'][i],
                        i,
                        _selectedOptionIndex == i ? Colors.red : Colors.blueGrey,
                      ),
                    ],
                ],
              ),
              SizedBox(height: 20),
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
              if (_currentQuestion == _questions.length - 1)
                ElevatedButton(
                  onPressed: () {
                    int correctAnswers = 0;
                    for (var question in _questions) {
                      if (question['correctOption'] == question['selectedOption']) {
                        correctAnswers++;
                      }
                    }
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Quiz Score"),
                          content: Text(
                              "You got $correctAnswers out of ${_questions.length} questions correct."),
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
              if (_currentQuestion == _questions.length - 1)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChapterReviewPage(), // Navigate to ChapterReviewPage
                      ),
                    );
                  },
                  child: Text("Finish Quiz"),
                ),
            ],
          )
              : ElevatedButton(
            onPressed: () {
              setState(() {
                _loading = true;
                _currentQuestion = 0; // Reset to the first question
                _selectedOptionIndex = -1; // Reset the selected option
                _answered = false; // Reset the answered status
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
            // Replace this with your logic to show quiz results or navigate to a result page
            // For example,
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
    // Implement the UI to display the quiz results here
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