import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/textelementsstyles.dart';
import 'Homepage.dart';

class ChapterReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.grey[350],
        title: Text(
          'Learn Chapter 1',
          style: AppBarTitle, // Set text color to black
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/iconwtbg.png', width: 190,), // Added image path
                SizedBox(height: 10),
                Text(
                  'Congratulations!',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30), // Add new line
                Text(
                  'You have successfully reviewed all the questions in Chapter 1.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center, // Align text in the center
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  // Navigate back to the HomePage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Colors.white)),
                ),
              ),

            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.blue[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
