import 'package:flutter/material.dart';
import 'dart:ui';
import '../utils.dart';
import 'package:roadschool/Pages/Homepage.dart';
class Practicetests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 1.3;

    return Scaffold(
      appBar: AppBar(
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
    // Create your grid item based on the index
    // Modify the properties accordingly based on your layout

    // For example:
    return TextButton(
      onPressed: () {},
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
          child: Center(
            child: RichText(
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
          ),
        ),
      ),
    );
  }
}