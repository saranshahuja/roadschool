import 'package:flutter/material.dart';

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
  bool isNotificationsOn = false;
  TimeOfDay selectedTime = TimeOfDay(hour: 8, minute: 0); // Default time

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF034D91),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        title: Text('Notifications'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Allow for notifications:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Switch(
                value: isNotificationsOn,
                onChanged: (newValue) {
                  setState(() {
                    isNotificationsOn = newValue;
                  });
                },
              ),
              SizedBox(height: 40),
              Text(
                'Schedule notification:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              DropdownButton<TimeOfDay>(
                value: selectedTime,
                onChanged: (newValue) {
                  setState(() {
                    selectedTime = newValue!;
                  });
                },
                hint: Text('Select time'),
                style: TextStyle(
                  color: Colors.black, // Text color
                  fontSize: 20,
                ),
                items: List.generate(
                  24,
                      (index) {
                    final time = TimeOfDay(hour: index, minute: 0);
                    return DropdownMenuItem<TimeOfDay>(
                      value: time,
                      child: Text(time.format(context)),
                    );
                  },
                ),
              ),
            ],
          ),
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
            label: 'Notifications',
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
