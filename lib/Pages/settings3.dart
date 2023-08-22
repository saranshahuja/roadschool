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
            Container(
              width: 278,
              height: 55,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue, // Make the box blue
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NotificationButton(

                    title: 'Off',

                    isActive: !isNotificationsOn,
                    onPressed: () {
                      setState(() {
                        isNotificationsOn = false;
                      });
                    },
                  ),
                  NotificationButton(
                    title: 'On',
                    isActive: isNotificationsOn,
                    onPressed: () {
                      setState(() {
                        isNotificationsOn = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Schedule notification',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
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

class NotificationButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  NotificationButton({
    required this.title,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: isActive ? Colors.blue : Colors.grey,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.white), // Make the text white
      ),
    );
  }
}
