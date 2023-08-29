import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart'; // Import the ToggleSwitch package

void main() {
  runApp(Settingsthree());
}

class Settingsthree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notifications',
      theme: ThemeData(
        primaryColor: Color(0xFF0071DA),
      ),
      home: SettingPage(),
    );
  }
}

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int notificationStatus = 0; // 0: Off, 1: On

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF034D91),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Notifications'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Allow for notifications',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            ToggleSwitch(
              minWidth: 100.0,
              initialLabelIndex: notificationStatus,
              cornerRadius: 20,
              // activeBgColor: Colors.blue,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              labels: ['Off', 'On'],
              onToggle: (index) {
                setState(() {
                  notificationStatus = index!;
                });
              },
            ),

            SizedBox(height: 40),
            Text(
              'Schedule notification',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: 'Set time',
              onChanged: (newValue) {
                // Handle the dropdown change
              },
              items: const [
                DropdownMenuItem<String>(
                  value: 'Set time',
                  child: Text('Set time'),
                ),
                DropdownMenuItem<String>(
                  value: '8:00',
                  child: Text('8:00'),
                ),
                DropdownMenuItem<String>(
                  value: '9:00',
                  child: Text('9:00'),
                ),
                  DropdownMenuItem<String>(
                  value: '12:00',
                  child: Text('12:00'),
                ),
                DropdownMenuItem<String>(
                  value: '13:00',
                  child: Text('13:00'),
                ),
                DropdownMenuItem<String>(
                  value: '15:00',
                  child: Text('15:00'),
                ),
                DropdownMenuItem<String>(
                  value: '20:00',
                  child: Text('20:00'),
                ),
                // Add more time options here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
