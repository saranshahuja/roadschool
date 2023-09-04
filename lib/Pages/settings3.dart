import 'package:flutter/material.dart';
import 'package:roadschool/Pages/settings.dart';
import 'package:toggle_switch/toggle_switch.dart'; // Import the ToggleSwitch package


class Setting3Page extends StatefulWidget {
  @override
  _Setting3PageState createState() => _Setting3PageState();
}

class _Setting3PageState extends State<Setting3Page> {
  int notificationStatus = 0; // 0: Off, 1: On

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
        title: Text('Notifications', style: TextStyle(color: Colors.white),),
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
              activeFgColor: Colors.white,
              // activeBgColor: Colors.blue,
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
