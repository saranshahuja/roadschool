import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../utils.dart';

class progressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // progressscreenfSy (0:3)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 358*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(55*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupcsqhHcm (5xvEGFJDyzaZCV5wugcSQH)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
              padding: EdgeInsets.fromLTRB(30*fem, 71.5*fem, 100*fem, 7.5*fem),
              width: double.infinity,
              height: 109*fem,
              decoration: BoxDecoration (
                color: Color(0xffd9d9d9),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // vectorMMj (0:16)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 5.2*fem),
                    width: 11.18*fem,
                    height: 21.3*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector.png',
                      width: 11.18*fem,
                      height: 21.3*fem,
                    ),
                  ),
                  Center(
                    // level1practiceteste5w (0:15)
                    child: Text(
                      'Level 1 Practice Test',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group5591Wtq (0:18)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
              width: double.infinity,
              height: 71*fem,
              decoration: BoxDecoration (
                color: Color(0xff024c90),
              ),
              child: Center(
                child: Text(
                  'Progress',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 35*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              // chapterlearningBVB (8:87)
              margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 0*fem, 285*fem),
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 25*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2102272797*ffem/fem,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Chapter ',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 25*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: 'LEARNING:',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 25*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // chaptertestsuT7 (8:88)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 0*fem, 0*fem),
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 25*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2102272797*ffem/fem,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Chapter ',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 25*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: 'TESTS:',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 25*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}