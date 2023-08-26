import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      if (index == _questions[_currentQuestion]['correctOption']) {
        buttonColor = Colors.green;
      } else if (index == _selectedOptionIndex) {
        buttonColor = Colors.red;
      } else {
        opacity = 0.5;
      }
    }

    return Opacity(
      opacity: opacity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
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
            backgroundColor: buttonColor,
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
                    for (var i = 0; i <
                        _questions[_currentQuestion]['options'].length; i++)
                      _buildOption(
                        _questions[_currentQuestion]['options'][i],
                        i,
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
