
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'testPages.dart';  // Import the testPages.dart file here

class PracticeTests extends StatefulWidget {
  @override
  _PracticeTestsState createState() => _PracticeTestsState();
}

class _PracticeTestsState extends State<PracticeTests> {
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
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('chapters').get();
    for (var doc in querySnapshot.docs) {
      fetchedChapters.add({
        'id': doc.id,
        // Assuming you want to use the doc.id as the name too, since no fields are there
        'name': doc.id,
      });
    }

    return fetchedChapters;
  }


  @override
  Widget build(BuildContext context) {

    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: Text('Practice Tests',),),
        body: Center(

          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: const Text('Practice Tests',),backgroundColor: const Color(0xFFC5E9BF)),
        body: GridView.builder(
          itemCount: chapters.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,  // Number of items per row
          ),
          itemBuilder: (BuildContext context, int index) {
            String chapterId = chapters[index]['id'];
            String chapterName = chapters[index]['name'];

            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LinearProgressIndicatorApp(
                            chapterId: chapterId,
                            chapterName: chapterName,
                          ),
                    ),
                  );
                },

                child: Card(

                    child: Container(
                        width: 141,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                          color: const Color(0x5958bf47),
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
                                        TextSpan(
                                          text: 'Test ',
                                        ),
                                        TextSpan(
                                          text: '${index +
                                              1}', // Adjust this based on your data

                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                            )
                        )
                    )
                )
            );
          }
        ),
      );
    }
  }
}
