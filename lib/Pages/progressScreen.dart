import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:roadschool/Pages/Homepage.dart';

class ProgressScreen extends StatefulWidget {
  @override
  _ProgressScreenState createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  int totalChapters = 0; // Initialized
  int completedChapters = 0; // Initialized
  int completedTests = 0; // Initialized

  @override
  void initState() {
    super.initState();
    fetchUserProgress();
  }

  Future<void> fetchUserProgress() async {
    final User? user = FirebaseAuth.instance.currentUser;
    final String userId = user != null ? user.uid : 'no-user';

    // Fetch total chapters
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('chapters').get();
    totalChapters = querySnapshot.docs.length;

    // Fetch completed chapters and tests
    DocumentSnapshot userProgressDoc = await FirebaseFirestore.instance.collection('UserProgress').doc(userId).get();
    Map<String, dynamic> userProgress = userProgressDoc.data() as Map<String, dynamic>;

    completedChapters = userProgress['completedChapters']?.length ?? 0; // Null check
    completedTests = userProgress['completedTests']?.length ?? 0; // Null check

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Road School',
          style: TextStyle(
            fontFamily: 'inter',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFD9D9D9),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      // Using `SingleChildScrollView` to avoid overflow when keyboard appears
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity, // Take full width
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Progress',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'inter',
                  ),
                ),
                SizedBox(height: 32),
                Text('Chapters completed: $completedChapters/$totalChapters'),
                SizedBox(height: 16),
                Text('Tests completed: $completedTests/$totalChapters'),
                SizedBox(height: 32),
                Container(
                  height: 200,
                  width: 200,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          value: completedChapters.toDouble(),
                          color: Color(0x500071DA),
                          title: 'Chapters',
                        ),
                        PieChartSectionData(
                          value: completedTests.toDouble(),
                          color: Color(0x58FF3259),
                          title: 'Tests',
                        ),
                        PieChartSectionData(
                          value: (totalChapters - completedChapters - completedTests).toDouble(),
                          color: Colors.grey[200],
                          title: 'Remaining',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
