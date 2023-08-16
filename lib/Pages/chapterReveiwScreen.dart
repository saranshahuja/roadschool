import 'package:flutter/material.dart';




class ChapterReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Text(
          'Learn Chapter 1',
          style: TextStyle(color: Colors.black), // Set text color to black
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/iconwtbg.png'), // Added image path
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
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_back, color: Colors.black), // Set arrow color to black
                label: Text(
                  'Learn More',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Colors.white)), // Set outline color
                ),
              ),
              SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Test Your Knowledge',
                      style: TextStyle(color: Colors.black), // Set text color to black
                    ),
                    SizedBox(width: 10), // Add space here
                    Icon(Icons.arrow_forward, color: Colors.black), // Set arrow color to black
                  ],
                ),
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Colors.white)), // Set outline color
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
