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
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SettingsButton(
              title: 'Font Size',
              onPressed: () {
                // TODO: Implement font size settings
              },
            ),
            SettingsButton(
              title: 'Notification',
              onPressed: () {
                // TODO: Implement notification settings
              },
            ),
            SettingsButton(
              title: 'About Us',
              onPressed: () {
                // TODO: Implement about us page
              },
            ),
            SettingsButton(
              title: 'Exit App',
              onPressed: () {
                // TODO: Implement exit app logic
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  SettingsButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
          textStyle: TextStyle(fontSize: 20),
        ),
        child: Text(title),
      ),
    );
  }
}