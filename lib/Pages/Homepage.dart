import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFD9D9D9),
          leading: Image.asset('assets/images/image-2.png', width: 40, height: 40), // Adjust width and height
          title: const Text('Home',
            style: TextStyle(color: Colors.black),
          )),
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
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 310,
                    height: 110,
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle Learn chapters button press
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        backgroundColor: Color(0x500071DA), // Set button background color
                        padding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Adjust padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),)
                      ),
                      child: const Text(
                        'Learn chapters',
                        style: TextStyle(fontSize: 28, color: Colors.black), // Set button text color
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 310,
                    height: 110,
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle Practice test button press
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        backgroundColor: Color(0x500071DA), // Set button background color
                        padding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Adjust padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),)
                      ),
                      child: const Text(
                        'Practice test',
                        style: TextStyle(fontSize: 28, color: Colors.black), // Set button text color
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 310,
                    height: 110,
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle Course Progress button press
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        backgroundColor: Color(0x500071DA), // Set button background color
                        padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Adjust padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),)
                      ),
                      child: const Text(
                        'Course Progress',
                        style: TextStyle(fontSize: 28, color: Colors.black), // Set button text color
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}