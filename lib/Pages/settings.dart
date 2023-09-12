import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roadschool/Pages/Homepage.dart';
import 'package:roadschool/Pages/settings2.dart';
import 'package:roadschool/Pages/settings3.dart';




class SettingPage extends StatefulWidget { // Changed to StatefulWidget
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _selectedIndex = 0; // Added to keep track of selected index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Settings'),
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
        currentIndex: _selectedIndex, // Added to indicate selected index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 0) {
            // Navigate to Home Page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ); // Assuming '/home' is the route name for your Home Page
          }
        },
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
          buildSettingsButton(context, 'Font Size', borderRadius: 15.0, onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Settingstwo()));
          }, ),
          const SizedBox(height: 70), // Increased spacing
          buildSettingsButton(context, 'Notifications', borderRadius: 15.0, onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Setting3Page()));
          },),
          const SizedBox(height: 70), // Increased spacing
          buildSettingsButton(context, 'About Us', borderRadius: 15.0),
          const SizedBox(height: 70), // Increased spacing
          buildSettingsButton(context, 'Exit App', textColor: Colors.red, borderRadius: 15.0, onPressed: () {
            SystemNavigator.pop();
          }),
          const Spacer(),
        ],
      ),
    );
  }

  Widget buildSettingsButton(BuildContext context, String title,
      {Color? textColor, double borderRadius = 10.0, VoidCallback? onPressed}) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed:onPressed,
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
