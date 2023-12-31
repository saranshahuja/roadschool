import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';
import 'package:roadschool/Pages/AnswerScreen.dart';

class LearnChapters extends StatefulWidget {
  const LearnChapters({Key? key}) : super(key: key);

  @override
  _LearnChaptersState createState() => _LearnChaptersState();
}

class _LearnChaptersState extends State<LearnChapters> {
  bool _loading = true;
  List<Map<String, dynamic>> chapters = [];

  @override
  void initState() {
    super.initState();
    fetchChapters().then((fetchedChapters) {
      setState(() {
        chapters = fetchedChapters;
        _loading = false;
      });
    });
  }

  Future<List<Map<String, dynamic>>> fetchChapters() async {
    List<Map<String, dynamic>> fetchedChapters = [];
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection('chapters').get();
    for (var doc in querySnapshot.docs) {
      fetchedChapters.add({
        'id': doc.id,
        'name': doc.id,
      });
    }

    return fetchedChapters;
  }

  Future<List<Map<String, dynamic>>> fetchQuestions() async {
    List<Map<String, dynamic>> fetchedQuestions = [];
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection('questions').get();
    int questionNumber = 1; // Initialize the question number

    for (var doc in querySnapshot.docs) {
      var questionData = doc.data() as Map<String, dynamic>;

      // Add the question number to the question data
      questionData['questionNumber'] = questionNumber;

      fetchedQuestions.add(questionData);

      questionNumber++; // Increment the question number for the next question
    }

    return fetchedQuestions;
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset(
              'assets/images/vector-5Rj.png',
              color: Colors.white,
              height: 24,
              width: 24,
            ),
            onPressed: () {
              Navigator.of(context).pop(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          title: Text(
            'Practice Tests',
          ),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: const Text(
            'Learn Chapters',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF034D91),
        ),
        body: GridView.builder(
            itemCount: chapters.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of items per row
            ),
            itemBuilder: (BuildContext context, int index) {
              String chapterId = chapters[index]['id'];
              String chapterName = chapters[index]['name'];

              return GestureDetector(
                onTap: () async {
                  // Fetch questions and assign question numbers
                  List<Map<String, dynamic>> questions =
                  await fetchQuestions();

                  // TODO: Add Firestore logging code here to update user's completed chapters
                  // For example:
                  // await FirebaseFirestore.instance.collection('UserProgress').doc(userId).update({'completedChapters': FieldValue.arrayUnion([currentChapterId])});
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnswerSheetPage(
                        chapterId: chapters[index]['id'],
                        questions: questions,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Card(
                    child: Container(
                      width: 141,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff000000)),
                        color: const Color(0xffA6CEF2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Learn ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: chapterName,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ), // Adjust this based on your data
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      );
    }
  }
}
