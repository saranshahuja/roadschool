import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';

void main() {
  runApp(Settingstwo());
}

class Settingstwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingPage(),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFF034D91),
      leading: IconButton(
        icon: Image.asset(
          'assets/images/vector-5Rj.png', // Replace with the actual image path
          color: Colors.white,
          height: 24, // Adjust the height as needed
          width: 24,  // Adjust the width as needed //change
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingPage()), // Navigate to HomePage
          );
        },
      ),
        title: Text('Font Size'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'Changes will not affect image size.',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          Center( // Centering the entire Column containing buttons
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SettingsButton(
                  title: 'Small',
                  fontSize: 18,
                  onPressed: () {
                    // TODO: Implement font size settings
                  },
                ),
                SettingsButton(
                  title: 'Normal',
                  onPressed: () {
                    // TODO: Implement notification settings
                  }, fontSize: 20,
                ),
                SettingsButton(
                  title: 'Large',
                  fontSize: 24,
                  onPressed: () {
                    // TODO: Implement about us page
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF034D91),
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
    );
  }
}

class SettingsButton extends StatelessWidget {
  final String title;
  final double fontSize;
  final VoidCallback onPressed;

  SettingsButton({
    required this.title,
    required this.fontSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
