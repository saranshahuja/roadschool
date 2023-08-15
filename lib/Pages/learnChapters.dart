import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../utils.dart';

class learnChapterpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // selectchaptersdAR (0:3)
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(55*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupwvc5H8V (QUxyej4DSP74MZjgk4wVC5)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                padding: EdgeInsets.fromLTRB(14*fem, 66*fem, 7*fem, 7*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xffc5e9bf),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(20*fem),
                    topRight: Radius.circular(20*fem),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // vectoruvZ (0:157)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.82*fem, 17.7*fem),
                      width: 11.18*fem,
                      height: 21.3*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-yFX.png',
                        width: 11.18*fem,
                        height: 21.3*fem,
                      ),
                    ),
                    Container(
                      // testsoW9 (0:158)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 245*fem, 11*fem),
                      child: Text(
                        'Tests',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 32*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // image44fHT (0:196)
                      width: 55*fem,
                      height: 55*fem,
                      child: Image.asset(
                        'assets/page-1/images/image-44.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                // chaptertestsavD (0:173)
                'Chapter Tests',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
              Container(
                // autogroupe1vriWd (QUy22zRAW8NFGtuHDJE1vR)
                width: double.infinity,
                height: 669*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // group5593SxR (0:16)
                      left: 11*fem,
                      top: 16*fem,
                      child: Container(
                        width: 412*fem,
                        height: 61*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group5503L2D (0:18)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1RC5 (0:20)
                                    left: 29*fem,
                                    top: 9.7901229858*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionhfP (0:21)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorPHK (0:22)
                                    left: 171.0000457764*fem,
                                    top: 20.3332672119*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Icon(Icons.navigate_next_outlined)
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503JQH (0:24)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 9.79*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupj76hMdT (QUy2YE5T7CJrXohJFHJ76H)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // chapter15ZT (0:26)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.21*fem),
                                                  child: Text(
                                                    'Chapter 1\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 20*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionPq3 (0:27)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorVNH (0:28)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.08*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-RbF.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group55031Ld (0:30)
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter17eZ (0:32)
                                    left: 29*fem,
                                    top: 9.7901229858*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionQtZ (0:33)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorJU9 (0:34)
                                    left: 171.0000457764*fem,
                                    top: 20.3332672119*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-QnD.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503Db7 (0:36)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(27*fem, 9*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupakuwtx9 (QUy2n8qwVq3rckZHR9akuw)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // chapter2Rx5 (0:38)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                                  child: Text(
                                                    'Chapter 2\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 20*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionZHb (0:39)
                                                  margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorg7K (0:40)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-XTX.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group5593nAM (0:42)
                      left: 11*fem,
                      top: 102*fem,
                      child: Container(
                        width: 412*fem,
                        height: 61*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group55036wj (0:44)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1obF (0:46)
                                    left: 29*fem,
                                    top: 9.7901229858*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionJH7 (0:47)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorCtH (0:48)
                                    left: 171.0000457764*fem,
                                    top: 20.3332691193*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-PXX.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503vpH (0:50)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupgzspDYV (QUy363VmWVKdBWnvu8gZsP)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter3xW5 (0:52)
                                                  'Chapter 3\n',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionW1o (0:53)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectord6R (0:54)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-3Ko.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group55039aZ (0:56)
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1UMw (0:58)
                                    left: 29*fem,
                                    top: 9.7901229858*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionmbw (0:59)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorrtH (0:60)
                                    left: 171.0000457764*fem,
                                    top: 20.3332691193*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-U2D.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503Aty (0:62)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupdygd3xm (QUy3PsKQEgyi9s5kTaDygD)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter4zd7 (0:64)
                                                  'Chapter 4\n',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionLgy (0:65)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorFow (0:66)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-Uzm.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group5593n3B (0:68)
                      left: 11*fem,
                      top: 203*fem,
                      child: Container(
                        width: 412*fem,
                        height: 61*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group55036pZ (0:70)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1QaM (0:72)
                                    left: 29*fem,
                                    top: 9.7901229858*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionJvd (0:73)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorD21 (0:74)
                                    left: 171.0000457764*fem,
                                    top: 20.3332672119*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-sbw.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503L6d (0:76)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupf1cuRds (QUy3fXXyaxe3hUo61sF1cu)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter5jPf (0:78)
                                                  'Chapter 5',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionsVs (0:79)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorPUD (0:80)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-aaM.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group5503uhT (0:82)
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter12GH (0:84)
                                    left: 29*fem,
                                    top: 9.7901229858*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionXD3 (0:85)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectordWy (0:86)
                                    left: 171.0000457764*fem,
                                    top: 20.3332672119*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-Hmb.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503jpu (0:88)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogrouppsf7Rxd (QUy3tSL8a5zrfUKA7Cpsf7)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter6AvD (0:90)
                                                  'Chapter 6',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionKYD (0:91)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorr2M (0:92)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-ESD.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group5593mQD (0:94)
                      left: 11*fem,
                      top: 309*fem,
                      child: Container(
                        width: 412*fem,
                        height: 61*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group5503hYm (0:96)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1orh (0:98)
                                    left: 29*fem,
                                    top: 9.7901306152*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionWFK (0:99)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorp17 (0:100)
                                    left: 171.0000457764*fem,
                                    top: 20.3332672119*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-GjK.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503KyT (0:102)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogrouptvrbDJ9 (QUy4BgLQK5MAUvzCCqTVRb)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter79xV (0:104)
                                                  'Chapter 7\n',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionVWZ (0:105)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vector2Fb (0:106)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-xND.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group55039b7 (0:108)
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1U7b (0:110)
                                    left: 29*fem,
                                    top: 9.7901306152*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionaRX (0:111)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorH53 (0:112)
                                    left: 171.0000457764*fem,
                                    top: 20.3332672119*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-eqX.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503nnV (0:114)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupxi3tU9X (QUy4UqWUmc5nhyiQNvXi3T)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter81QM (0:116)
                                                  'Chapter 8',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionkMw (0:117)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorUYq (0:118)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-cVo.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group55931Hs (0:120)
                      left: 12*fem,
                      top: 415*fem,
                      child: Container(
                        width: 412*fem,
                        height: 61*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group550399B (0:122)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1rZP (0:124)
                                    left: 29*fem,
                                    top: 9.7901306152*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptionZyb (0:125)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorH8u (0:126)
                                    left: 171.0000457764*fem,
                                    top: 20.3332519531*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-AHw.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503QDX (0:128)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupxkvwgwj (QUy4jfR7HHbJKTyUhmxkVw)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter9cqP (0:130)
                                                  'Chapter 9',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionxuF (0:131)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorVeH (0:132)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-tRo.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group5503cyo (0:134)
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // chapter1joX (0:136)
                                    left: 29*fem,
                                    top: 9.7901306152*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 91*fem,
                                        height: 25*fem,
                                        child: Text(
                                          'Chapter 1\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // descriptiondtu (0:137)
                                    left: 30*fem,
                                    top: 35*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 74*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'description\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // vectorYW5 (0:138)
                                    left: 171.0000457764*fem,
                                    top: 20.3332519531*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10.22*fem,
                                        height: 16.04*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector.png',
                                          width: 10.22*fem,
                                          height: 16.04*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group5503FvH (0:140)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 11.78*fem, 9*fem),
                                      width: 193*fem,
                                      height: 61*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffc5e9bf),
                                        borderRadius: BorderRadius.circular(15*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupx2cz9Vs (QUy4wpjWiHQxwjz7VDX2CZ)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // chapter10V3w (0:142)
                                                  'Chapter 10\n',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Container(
                                                  // descriptionRyB (0:143)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'description\n',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff8d8d8d),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // vectorwgd (0:144)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.29*fem),
                                            width: 10.22*fem,
                                            height: 16.04*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-2AM.png',
                                              width: 10.22*fem,
                                              height: 16.04*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupa27tsKP (QUxzjSki7vN68SXrtna27T)
                      left: 12*fem,
                      top: 575*fem,
                      child: Container(
                        width: 411*fem,
                        height: 81*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group5503zQ1 (0:146)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(29*fem, 13*fem, 11.78*fem, 5*fem),
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupqe8q48y (QUy12Gc1ScdyyqUmNhQe8q)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                    width: double.infinity,
                                    height: 37*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // autogroupacamBUV (QUy16mUWmPrr28XPE5aCAM)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                                          width: 41*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // testWmf (0:148)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 41*fem,
                                                    height: 25*fem,
                                                    child: Text(
                                                      'Test',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 20*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // testcph (0:149)
                                                left: 3*fem,
                                                top: 20*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 26*fem,
                                                    height: 17*fem,
                                                    child: Text(
                                                      'test\n',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff8d8d8d),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // vector7mT (0:150)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.7*fem),
                                          width: 10.22*fem,
                                          height: 21.3*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-WH7.png',
                                            width: 10.22*fem,
                                            height: 21.3*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // incompleteqhT (0:165)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.22*fem, 0*fem),
                                    child: Text(
                                      'Incomplete',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xfffa7470),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group55039i9 (0:152)
                              padding: EdgeInsets.fromLTRB(29*fem, 13*fem, 11.78*fem, 5*fem),
                              width: 193*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffc5e9bf),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupx3wfFWH (QUy1L6ReApJ4xBmaw8x3wf)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                    width: double.infinity,
                                    height: 37*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // autogroupmd5tnWD (QUy1Q6JynqpqS19FFFmD5T)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83*fem, 0*fem),
                                          width: 59*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // test28KB (0:154)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 59*fem,
                                                    height: 25*fem,
                                                    child: Text(
                                                      'Test 2\n',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 20*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // testdmj (0:155)
                                                left: 3*fem,
                                                top: 20*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 26*fem,
                                                    height: 17*fem,
                                                    child: Text(
                                                      'test\n',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff8d8d8d),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // vectorkbT (0:156)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.7*fem),
                                          width: 10.22*fem,
                                          height: 21.3*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-ALH.png',
                                            width: 10.22*fem,
                                            height: 21.3*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // incomplete57w (0:171)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.22*fem, 0*fem),
                                    child: Text(
                                      'Incomplete',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xfffa7470),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupmfkmnY9 (QUxz1DU5FGSzK8GwqvMfkm)
                      left: 79*fem,
                      top: 77*fem,
                      child: Container(
                        width: 279*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // completeWyw (0:160)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 157*fem, 0*fem),
                              child: Text(
                                'Complete\n',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff37bf55),
                                ),
                              ),
                            ),
                            Text(
                              // incompleteFAq (0:166)
                              'Incomplete',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xfffa7470),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupin9payo (QUxzAxgqSxRrjRscraiN9P)
                      left: 73*fem,
                      top: 174*fem,
                      child: Container(
                        width: 283*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // incompleteWsT (0:161)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 0*fem),
                              child: Text(
                                'Incomplete',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xfffa7470),
                                ),
                              ),
                            ),
                            Text(
                              // incompleteRzR (0:167)
                              'Incomplete',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xfffa7470),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupagvfBCu (QUxzL86EfS6wzqrWQSAGVf)
                      left: 64*fem,
                      top: 275*fem,
                      child: Container(
                        width: 283*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // incompletehww (0:162)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 0*fem),
                              child: Text(
                                'Incomplete',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xfffa7470),
                                ),
                              ),
                            ),
                            Text(
                              // incompleteSPj (0:168)
                              'Incomplete',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xfffa7470),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupcbh3niV (QUxzTHYy4u1f2M9ZoECbH3)
                      left: 73*fem,
                      top: 380*fem,
                      child: Container(
                        width: 283*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // incompleteWuP (0:163)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 0*fem),
                              child: Text(
                                'Incomplete',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xfffa7470),
                                ),
                              ),
                            ),
                            Text(
                              // incomplete3eR (0:169)
                              'Incomplete',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xfffa7470),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogrouprvtdQE5 (QUxzc2oPs5cLKhQKjMrVtD)
                      left: 70*fem,
                      top: 480*fem,
                      child: Container(
                        width: 283*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // incompletewUu (0:164)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 0*fem),
                              child: Text(
                                'Incomplete',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xfffa7470),
                                ),
                              ),
                            ),
                            Text(
                              // incompletesNZ (0:170)
                              'Incomplete',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xfffa7470),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // line30Rey (0:172)
                      left: 83*fem,
                      top: 535*fem,
                      child: Align(
                        child: SizedBox(
                          width: 264*fem,
                          height: 1*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xff838383),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // fulltestM2q (0:174)
                      left: 167.5*fem,
                      top: 539*fem,
                      child: Align(
                        child: SizedBox(
                          width: 95*fem,
                          height: 30*fem,
                          child: Text(
                            'Full Test',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupxuysFe1 (QUy1Z1Do9wesvBHf2UXuys)
                width: 443*fem,
                height: 111*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle2CJM (0:159)
                      left: 73*fem,
                      top: 79*fem,
                      child: Align(
                        child: SizedBox(
                          width: 285*fem,
                          height: 8*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(52*fem),
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group5563WZw (0:175)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        width: 443*fem,
                        height: 111*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // footermessagebackgroundq6R (0:176)
                              left: 0*fem,
                              top: 0.0002441406*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 443*fem,
                                  height: 111*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/footer-message-background.png',
                                    width: 443*fem,
                                    height: 111*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // unionLYy (0:177)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 443*fem,
                                  height: 111*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/union.png',
                                    width: 443*fem,
                                    height: 111*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // searchTdb (0:178)
                              left: 185.5516357422*fem,
                              top: 63*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 33*fem,
                                  height: 14*fem,
                                  child: Text(
                                    'Search',
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // iconsearchkch (0:179)
                              left: 197.0792236328*fem,
                              top: 22.8325805664*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 20.53*fem,
                                  height: 17.38*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/icon-search.png',
                                    width: 20.53*fem,
                                    height: 17.38*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse18FpM (0:181)
                              left: 177.9873046875*fem,
                              top: 5.0214233398*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 61.43*fem,
                                  height: 52*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/ellipse-18.png',
                                    width: 61.43*fem,
                                    height: 52*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // footeronbackgroundmGu (0:182)
                              left: 23.62109375*fem,
                              top: 15.0001220703*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 38.98*fem,
                                  height: 59*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/footer-on-background.png',
                                    width: 38.98*fem,
                                    height: 59*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // home5oP (0:183)
                              left: 58.0152587891*fem,
                              top: 70.6552734375*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 29*fem,
                                  height: 14*fem,
                                  child: Text(
                                    'Home',
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // iconfooterhomeoffzQZ (0:184)
                              left: 61.7725830078*fem,
                              top: 30.6207275391*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.75*fem,
                                  height: 28.79*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/icon-footer-home-off.png',
                                    width: 25.75*fem,
                                    height: 28.79*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // footeroffbackgroundVcD (0:189)
                              left: 100.4078369141*fem,
                              top: 15.0001220703*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 38.98*fem,
                                  height: 59*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/footer-off-background-5bw.png',
                                    width: 38.98*fem,
                                    height: 59*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // footeroffbackgroundocu (0:190)
                              left: 276.4267578125*fem,
                              top: 15.0001220703*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 38.98*fem,
                                  height: 59*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/footer-off-background-Vrq.png',
                                    width: 38.98*fem,
                                    height: 59*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // footeroffbackground89P (0:191)
                              left: 353.2132568359*fem,
                              top: 15.0001220703*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 38.98*fem,
                                  height: 59*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/footer-off-background.png',
                                    width: 38.98*fem,
                                    height: 59*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // myaccountFUu (0:192)
                              left: 322.9135742188*fem,
                              top: 71.4482421875*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 54*fem,
                                  height: 14*fem,
                                  child: Text(
                                    'My Account',
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // iconfooteraccountonMXw (0:193)
                              left: 338.6945800781*fem,
                              top: 31.896484375*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 28.35*fem,
                                  height: 30.03*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/icon-footer-account-on.png',
                                    width: 28.35*fem,
                                    height: 30.03*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}