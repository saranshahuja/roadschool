import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Practicetests.dart';
import 'package:roadschool/Pages/learnChapters.dart';
import 'package:roadschool/Pages/progressScreen.dart';

import '../widgets/textelementsstyles.dart';
import 'SplashScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Road School', style: AppBarTitle,),
        backgroundColor: Color(0xFFD9D9D9),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/iconwtbg.png',
            width: 40,
            height: 40,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreenpage()), // Replace with the appropriate page
            );
          },
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LearnChapters()), // Navigate to HomePage
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                        backgroundColor: const Color(0x590071DA), // Set button background color
                        padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Adjust padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Study11.png', width: 55, height: 55),
                          SizedBox(width: 12),
                          const Text(
                            'Learn chapters',
                            style: TextStyle(fontSize: 28, color: Colors.black), // Set button text color
                          ),
                        ],
                      )
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PracticeTests()),
                        );  // Handle Practice test button press
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                        backgroundColor: Color(0x500071DA), // Set button background color
                        padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Adjust padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),)
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/image-45.png', width: 55, height: 55),
                            SizedBox(width: 12),
                            const Text(
                              'Practice Tests',
                              style: TextStyle(fontSize: 28, color: Colors.black), // Set button text color
                            ),
                          ],
                        )
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProgressScreen()), // Navigate to HomePage
                        );
                        // Handle Course Progress button press
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                        backgroundColor: const Color(0x500071DA), // Set button background color
                        padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 20), // Adjust padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),)
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/progress1.png', width: 55, height: 55),
                            const SizedBox(width: 12),
                            const Text(
                              'Course Progress',
                              style: TextStyle(fontSize: 28, color: Colors.black), // Set button text color
                            ),
                          ],
                        )
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