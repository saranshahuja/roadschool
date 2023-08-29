import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roadschool/Pages/chapterReveiwScreen.dart';

class LinearProgressIndicatorApp extends StatefulWidget {
  final String chapterId;
  final String chapterName;


  LinearProgressIndicatorApp({required this.chapterId, required this.chapterName});

  @override
  State<StatefulWidget> createState() {
    return LinearProgressIndicatorAppState();
  }
}

class LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp> {
  bool _loading = true;
  List<Map<String, dynamic>> _questions = [];
  int _currentQuestion = 0;
  int _selectedOptionIndex = -1;
  bool _answered = false;

  @override
  void initState() {
    super.initState();
    fetchQuestions(widget.chapterId).then((fetchedQuestions) {
      setState(() {
        _questions = fetchedQuestions;
        _loading = false;
      });
    });
  }

  Future<List<Map<String, dynamic>>> fetchQuestions(String chapterId) async {
    List<Map<String, dynamic>> questions = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('chapters')
        .doc(chapterId)
        .collection('questions')
        .limit(25)
        .get();
    for (var doc in querySnapshot.docs) {
      questions.add(doc.data() as Map<String, dynamic>);
    }

    return questions;
  }
  Widget _buildOption(String optionText, int index) {
    Color buttonColor = Color(0xFFE0E0E0);
    double opacity = 1.0;

    if (_answered) {
      if (_questions[_currentQuestion]['Correct Option'] == String.fromCharCode(index + 65)) {
        buttonColor = Colors.green;
      } else if (_selectedOptionIndex == index) {
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


  Widget build(BuildContext context) {
    if (_questions == null) {
      return CircularProgressIndicator();
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Traffic Rules Quiz"),
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
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
                ? CircularProgressIndicator()
                : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: new AlwaysStoppedAnimation<Color>(
                      Colors.lightGreenAccent),
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
                      _questions[_currentQuestion]['Question'],
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildOption(_questions[_currentQuestion]['Answer A'], 0),
                    _buildOption(_questions[_currentQuestion]['Answer B'], 1),
                    _buildOption(_questions[_currentQuestion]['Answer C'], 2),
                    _buildOption(_questions[_currentQuestion]['Answer D'], 3),
                    if (_answered)  // Show button only if an option has been selected
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_currentQuestion < _questions.length - 1) {
                              _currentQuestion++;
                              _selectedOptionIndex = -1;
                              _answered = false;
                            } else {
                              // Navigate to Congratulations page
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChapterReviewPage()),
                              );
                            }
                          });
                        },
                        child: Text(_currentQuestion < _questions.length - 1 ? 'Next Question' : 'Finish Quiz'),
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
}
