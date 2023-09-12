import 'package:cloud_firestore/cloud_firestore.dart';

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

