import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('C:\\Users\\Nishant\\AndroidStudioProjects\\untitled\\Images\\Cardrive.png', width: 40, height: 40), // Adjust width and height
        title: Text('Home'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'My Account',
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle Learn chapters button press
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Colors.lightBlue, // Set button background color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25), // Adjust padding
                ),
                child: Text(
                  'Learn chapters',
                  style: TextStyle(fontSize: 18, color: Colors.black), // Set button text color
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle Practice test button press
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Colors.lightBlue, // Set button background color
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),// Adjust padding
                ),
                child: Text(
                  'Practice test',
                  style: TextStyle(fontSize: 18, color: Colors.black), // Set button text color
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle Course Progress button press
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Colors.lightBlue, // Set button background color
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25), // Adjust padding
                ),
                child: Text(
                  'Course Progress',
                  style: TextStyle(fontSize: 18, color: Colors.black), // Set button text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


