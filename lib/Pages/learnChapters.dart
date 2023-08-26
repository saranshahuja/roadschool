import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';

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
        appBar: AppBar(
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

          leading: BackButton(color: Colors.white,),
            title: const Text(
              'Learn Chapters',
              style: TextStyle(color: Colors.white),
            ),

            backgroundColor: const Color(0xFF034D91)
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
                  onTap: () {
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
                                ])))),
                  ));
            }),
      );
    }
  }
}
