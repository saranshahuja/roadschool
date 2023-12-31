import 'package:flutter/material.dart';
import 'package:roadschool/Pages/settings.dart';
void main() {
  runApp(Settingstwo());
}

class Settingstwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingPage2(),
    );
  }
}

class SettingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF034D91),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/vector-5Rj.png',
            color: Colors.white,
            height: 24,
            width: 24,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => SettingPage()),
            );
          },

        ),
        title: Text('Font Size', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
          ),
          SizedBox(height: 40),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SettingsButton(
                  title: 'Small',
                  fontSize: 18,
                  textFontSize: 14,
                  onPressed: () {
                    // TODO: Implement font size settings
                  },
                  borderRadius: BorderRadius.circular(20),
                ),
                SizedBox(height: 50), // Increased spacing
                SettingsButton(
                  title: 'Normal',
                  fontSize: 18,
                  textFontSize: 18,
                  onPressed: () {
                    // TODO: Implement font size settings
                  },
                  borderRadius: BorderRadius.circular(20),
                ),
                SizedBox(height: 50), // Increased spacing
                SettingsButton(
                  title: 'Large',
                  fontSize: 18,
                  textFontSize: 24,
                  onPressed: () {
                    // TODO: Implement font size settings
                  },
                  borderRadius: BorderRadius.circular(20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  final String title;
  final double fontSize;
  final double textFontSize;
  final VoidCallback onPressed;
  final BorderRadius? borderRadius;
  final double width; // Add this property


  SettingsButton({
    required this.title,
    required this.fontSize,
    required this.textFontSize,
    required this.onPressed,
    this.borderRadius,
    this.width = double.infinity, // Default width is set to match the parent width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 320, // Set the width of the button
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(0),
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: textFontSize, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
