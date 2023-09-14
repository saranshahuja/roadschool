import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roadschool/Pages/chapterReveiwScreen.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/rendering.dart';



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
  List<Map<String, dynamic>> _images = [];
  int _currentQuestion = 0;
  int _selectedOptionIndex = -1;
  bool _answered = false;

  @override
  void initState() {
    super.initState();
    fetchQuestionsAndImages(widget.chapterId).then((fetchedData) {
      setState(() {
        _questions = fetchedData['questions']!;
        _images = fetchedData['images']!;
        _loading = false;
      });
    });
  }

  Future<Map<String, List<Map<String, dynamic>>>> fetchQuestionsAndImages(String chapterId) async {
    List<Map<String, dynamic>> questions = [];
    List<Map<String, dynamic>> images = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('chapters')
        .doc(chapterId)
        .collection('questions')
        .get();

    for (var doc in querySnapshot.docs) {
      var data = doc.data() as Map<String, dynamic>;
      questions.add(data);

      if (data.containsKey('image')) {
        images.add({'image': data['image']});
      } else {
        images.add({'image': ""});
      }
    }

    return {'questions': questions, 'images': images};
  }
  Widget _buildOption(String optionText, int index) {
    Color buttonColor = Colors.white;
    double opacity = 1.0;

    if (_answered) {
      if (_questions[_currentQuestion]['Correct Option'] == String.fromCharCode(index + 65)) {
        buttonColor = Colors.green;
      } else if (_selectedOptionIndex == index) {
        buttonColor = Colors.red;
      } else {
        // Making other options look faded
        opacity = 0.2;
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
                      borderRadius: BorderRadius.circular(10),
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

    double progress =(_currentQuestion+1)/(_questions.length+1);

    if (_questions == null) {
      return CircularProgressIndicator();
    } else {
      return SafeArea(
        child: Scaffold(
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
                  : SingleChildScrollView(
                    child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                    // LinearProgressIndicator(
                    //   backgroundColor: Colors.grey,
                    //   valueColor: new AlwaysStoppedAnimation<Color>(
                    //       Colors.lightGreenAccent),
                    //   value: (_currentQuestion + 1) / _questions.length,
                    // ),
                  Stack(
                    children: [
                      // Existing Linear Progress Indicator with green progress color
                      LinearProgressIndicator(
                        value: progress,
                        color: Colors.green,
                        backgroundColor: Colors.transparent,
                        minHeight: 27,
                      ),
                      // Existing Positioned widget for current position
                      Positioned(
                        left: MediaQuery.of(context).size.width * progress,
                        child: Image.asset(
                          'assets/images/iconwtbg.png',
                          height: 32,
                          width: 40,
                        ),
                      ),

                      // New Positioned widget for flag at the end
                      Positioned(
                        right: 0,
                        child: Image.asset(
                          'assets/images/flag.png',
                          height: 27,
                          width: 40,
                        ),
                      ),
                      Container(
                        height: 29,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ))),
                      )
                    ],
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _images[_currentQuestion]['image']!=""?Image.network(_images[_currentQuestion]['image']):Padding(padding: EdgeInsets.all(5)),
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
          ),
        ),
      );
    }
  }
}
