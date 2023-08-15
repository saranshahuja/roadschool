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
    return Container(
      width: double.infinity,
      child: Container(
        // selectchaptersfEH (0:3)
        padding: EdgeInsets.fromLTRB(0*fem, 67*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(55*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogrouper8u6D7 (qNqNxoKzEsH84nygjER8u)
              width: 431*fem,
              height: 71*fem,
              decoration: BoxDecoration (
                color: Color(0x5958bf47),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // practicetestsATs (5:121)
                    left: 112*fem,
                    top: 21*fem,
                    child: Align(
                      child: SizedBox(
                        width: 163*fem,
                        height: 30*fem,
                        child: Text(
                          'Practice Tests',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectormiZ (5:124)
                    left: 68*fem,
                    top: 24*fem,
                    child: Align(
                      child: SizedBox(
                        width: 11.18*fem,
                        height: 21.3*fem,
                        child: Image.asset(
                          'assets/LearnChapters/vector-5Rj.png',
                          width: 11.18*fem,
                          height: 21.3*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image45sWh (5:125)
                    left: 373*fem,
                    top: 8*fem,
                    child: Align(
                      child: SizedBox(
                        width: 55*fem,
                        height: 55*fem,
                        child: Image.asset(
                          'assets/LearnChapters/image-45.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle697PV3 (5:182)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 431*fem,
                        height: 71*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0x591bb901),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // practicetestsiGR (5:183)
                    left: 112*fem,
                    top: 21*fem,
                    child: Align(
                      child: SizedBox(
                        width: 163*fem,
                        height: 30*fem,
                        child: Text(
                          'Practice Tests',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorzUq (5:184)
                    left: 68*fem,
                    top: 24*fem,
                    child: Align(
                      child: SizedBox(
                        width: 11.18*fem,
                        height: 21.3*fem,
                        child: Image.asset(
                          'assets/LearnChapters/vector.png',
                          width: 11.18*fem,
                          height: 21.3*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image47t4R (5:185)
                    left: 373*fem,
                    top: 8*fem,
                    child: Align(
                      child: SizedBox(
                        width: 55*fem,
                        height: 55*fem,
                        child: Image.asset(
                          'assets/LearnChapters/image-47.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // practicetestsQHf (5:179)
                    left: 112*fem,
                    top: 21*fem,
                    child: Align(
                      child: SizedBox(
                        width: 163*fem,
                        height: 30*fem,
                        child: Text(
                          'Practice Tests',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectoruVK (5:180)
                    left: 68*fem,
                    top: 24*fem,
                    child: Align(
                      child: SizedBox(
                        width: 11.18*fem,
                        height: 21.3*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/LearnChapters/vector-xaM.png',
                            width: 11.18*fem,
                            height: 21.3*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image46zmf (5:181)
                    left: 373*fem,
                    top: 8*fem,
                    child: Align(
                      child: SizedBox(
                        width: 55*fem,
                        height: 55*fem,
                        child: Image.asset(
                          'assets/LearnChapters/image-46.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupgyszhvy (qNtNHzBXB8rqCvRp2gySZ)
              padding: EdgeInsets.fromLTRB(41*fem, 100*fem, 40*fem, 240*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupmpzqzQH (qNqjcsaN3SaGTDtdfmPzq)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 4*fem),
                    width: double.infinity,
                    height: 55*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupcsqduXF (qNqwcXbE82shuLsa2CsQD)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 149*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0x5958bf47),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Chapter',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                      ),
                                      TextSpan(
                                        text: '1',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          // autogroup5ddbBf7 (qNr37NRxQdvs9jQVw5DDB)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 150*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0x5958bf47),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Chapter',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                    ),
                                    TextSpan(
                                      text: '7',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupm8b358D (qNrAc9wVi1NGJomauM8b3)
                    margin: EdgeInsets.fromLTRB(40*fem, 0*fem, 48.5*fem, 21*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // incompleten2d (5:168)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 138.5*fem, 0*fem),
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
                          // completeh9b (5:174)
                          'Complete',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff58bf47),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupuepb3DT (qNrL23vZZXWJxd8uPUEPB)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupolsdBKf (qNrV1nwD7yEPYiNc9oLSD)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 49*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 150*fem,
                              height: 55*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0x5958bf47),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Chapter',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                      ),
                                      TextSpan(
                                        text: '2',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupvhgm3FP (qNrYr1tGEGdgYCP5BVhGm)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 149*fem,
                              height: 55*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0x5958bf47),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Chapter',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                      ),
                                      TextSpan(
                                        text: '8',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupirytugu (qNreqqthGZnQGFsYMiRyT)
                    margin: EdgeInsets.fromLTRB(45*fem, 0*fem, 50.5*fem, 20*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // completer6M (5:176)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 139.5*fem, 0*fem),
                          child: Text(
                            'Complete',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff58bf47),
                            ),
                          ),
                        ),
                        Text(
                          // completemz1 (5:177)
                          'Complete',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff58bf47),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupfyhpKEq (qNroRRvvXw6WncydQFYHP)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 2*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupfrmb2f3 (qNrzfcCEUzFcXEXFrfRMB)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 1*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 150*fem,
                              height: 55*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0x5958bf47),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Chapter ',
                                      ),
                                      TextSpan(
                                        text: '3',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupgae58rV (qNs55eWGobS4QLKBhGaE5)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 150*fem,
                              height: 55*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0x5958bf47),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Chapter ',
                                      ),
                                      TextSpan(
                                        text: '9',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupxw7jfE9 (qNsBk84yWp3XRxR3DxW7j)
                    margin: EdgeInsets.fromLTRB(38*fem, 0*fem, 47.5*fem, 20*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // incompletePfw (5:173)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 141.5*fem, 4*fem),
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
                        Container(
                          // completeiTK (5:175)
                          margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                          child: Text(
                            'Complete',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff58bf47),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupwdh3e65 (qNsLEsuvKZg3YNhCiwDH3)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 9*fem, 5*fem),
                    width: double.infinity,
                    height: 55*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupzxydAaD (qNsUEebANdD1B81pxZXYd)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 150*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0x5958bf47),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Chapters ',
                                      ),
                                      TextSpan(
                                        text: '4',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '-',
                                      ),
                                      TextSpan(
                                        text: '5',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          // autogrouptte5edo (qNsXeiZoBrCL6stgGTte5)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 149*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0x5958bf47),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Chapter ',
                                    ),
                                    TextSpan(
                                      text: '10',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupore1DaR (qNsdpCxo9NiEeq2zXoRe1)
                    margin: EdgeInsets.fromLTRB(38*fem, 0*fem, 49*fem, 17*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // incompleteZ8V (5:172)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 132*fem, 0*fem),
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
                          // incompleteH4V (5:169)
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
                  Container(
                    // autogroupflw5pq7 (qNsn9JRB2tyZwMfJwfLW5)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 9*fem, 4*fem),
                    width: double.infinity,
                    height: 56*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupxfn9Mq3 (qNsvUPsYvREuDtHdMXFN9)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 150*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0x5958bf47),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Chapter ',
                                      ),
                                      TextSpan(
                                        text: '6',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogrouprctbXN9 (qNsytTrBjeEE9eAUfRcTb)
                          width: 149*fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // line2258m (5:147)
                                left: 34.9483032227*fem,
                                top: 50.5808410645*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 6.48*fem,
                                    height: 1*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle695b77 (5:160)
                                left: 0*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 149*fem,
                                    height: 56*fem,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(10*fem),
                                          border: Border.all(color: Color(0xff000000)),
                                          color: Color(0x5958bf47),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // fulltestgPT (5:161)
                                left: 41*fem,
                                top: 16*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 67*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Full test',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 18*ffem,
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
                      ],
                    ),
                  ),
                  Container(
                    // autogroupfwyyP2y (qNt9U2DpWPjTdMBeEfWYy)
                    margin: EdgeInsets.fromLTRB(41*fem, 0*fem, 51*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // incomplete7zZ (5:171)
                          margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 127*fem, 0*fem),
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
                        Container(
                          // incompleterSM (5:170)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
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
          ],
        ),
      ),
    );
  }
}