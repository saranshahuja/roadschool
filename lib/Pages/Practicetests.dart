import 'package:flutter/material.dart';
import 'dart:ui';
import '../utils.dart';
import 'package:roadschool/Pages/Homepage.dart';
class PracticeTests extends StatefulWidget {
  @override
  _PracticeTestsState createState() => _PracticeTestsState();
}

class _PracticeTestsState extends State<PracticeTests> {
  List<bool> chapterStatus = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 310;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 1.5;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/vector-5Rj.png'), // Replace with the actual image path
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage
            );
          },
        ),
        title: Text('Practice Tests'),
      ),
      body: GridView.builder(
        itemCount: 10, // Number of items in the grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 1 * fem, // Spacing between columns
          mainAxisSpacing: 1 * fem, // Spacing between rows
        ),
        itemBuilder: (context, index) {
          return buildGridItem(context, fem, ffem, index);
        },
      ),
    );
  }

  Widget buildGridItem(BuildContext context, double fem, double ffem, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          if (!chapterStatus[index]) {
            chapterStatus[index] = true;
          }
        });
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: 141 * fem,
        height: 100 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff000000)),
          color: const Color(0x5958bf47),
          borderRadius: BorderRadius.circular(15 * fem),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 17 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Chapter ',
                    ),
                    TextSpan(
                      text: '${index + 1}', // Adjust this based on your data
                      style: TextStyle(
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                chapterStatus[index] ? 'Complete' : 'Incomplete',
                style: TextStyle(
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: chapterStatus[index] ? Color(0xff58bf47) : Color(0xfffa7470),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}