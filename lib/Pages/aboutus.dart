import 'package:flutter/material.dart';

void main() {
  runApp(AboutUsPage());
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Us',
      theme: ThemeData(
        primaryColor: Color(0xFF0071DA),
      ),
      home: AboutUsScreen(),
    );
  }
}

class AboutUsScreen extends StatelessWidget {
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
            width: 24, // Adjust the width as needed
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: 'Terms and Conditions',
              onChanged: (newValue) {},
              items: [
                DropdownMenuItem<String>(
                  value: 'Terms and Conditions',
                  child: Text(
                    'Terms and Conditions',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: 'Policies',
                  child: Text(
                    'Policies',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ],
            ),
          ],
        ),
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
            icon: Icon(Icons.notifications),
            label: 'About Us',
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
