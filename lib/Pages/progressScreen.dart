
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProgressBarPage extends StatefulWidget {
  @override
  _UserProgressBarPageState createState() => _UserProgressBarPageState();
}

class _UserProgressBarPageState extends State<UserProgressBarPage> {
  List<String> completedChapters = [];
  List<String> completedTests = [];

  @override
  void initState() {
    super.initState();
    // Fetch the user's progress from Firestore
    fetchUserProgress();
  }

  Future<void> fetchUserProgress() async {
    // Replace 'userId' with the actual user ID from Firebase Auth
    final userId = 'your_user_id_here';
    DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection('UserProgress').doc(userId).get();

    setState(() {
      completedChapters = List<String>.from(snapshot.get('completedChapters') ?? []);
      completedTests = List<String>.from(snapshot.get('completedTests') ?? []);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Progress Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Completed Chapters: ${completedChapters.length}'),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: completedChapters.length / 10, // Assuming there are 10 chapters in total
            ),
            SizedBox(height: 40),
            Text('Completed Tests: ${completedTests.length}'),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: completedTests.length / 5, // Assuming there are 5 tests in total
            ),
          ],
        ),
      ),
    );
  }
}
