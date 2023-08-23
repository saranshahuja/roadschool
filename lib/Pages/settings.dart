import 'package:flutter/material.dart';

void main() {
  runApp(SettingsApp());
}

class SettingsApp extends StatelessWidget {
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
        title: const Text('Settings'),
        leading: const Icon(Icons.arrow_back), // Back button
      ),
      body: Center(
        child: SettingsPageContent(),
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

class SettingsPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          buildSettingsButton(context, 'Font Size', borderRadius: 15.0),
          const SizedBox(height: 70), // Increased spacing
          buildSettingsButton(context, 'Notifications', borderRadius: 15.0),
          const SizedBox(height: 70), // Increased spacing
          buildSettingsButton(context, 'About Us', borderRadius: 15.0),
          const SizedBox(height: 70), // Increased spacing
          buildSettingsButton(context, 'Exit App', textColor: Colors.red, borderRadius: 15.0),
          const Spacer(),
        ],
      ),
    );
  }

  Widget buildSettingsButton(BuildContext context, String title,
      {Color? textColor, double borderRadius = 10.0}) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlue, // Background color
          padding: const EdgeInsets.symmetric(vertical: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: textColor ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
