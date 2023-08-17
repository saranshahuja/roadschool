import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          // progressscreenePK (0:3)
          width: double.infinity,
          decoration: BoxDecoration (
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(0*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupzk5ftBB (F6PaufgAJ37AguN3EAZk5F)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
                padding: EdgeInsets.fromLTRB(109*fem, 71.5*fem, 229*fem, 7.5*fem),
                width: double.infinity,
                height: 109*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffd9d9d9),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // vectorjhb (0:16)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.82*fem, 5.2*fem),
                      width: 11.18*fem,
                      height: 21.3*fem,
                      child: Image.asset(
                        'assets/images/vector-sP7.png',
                        width: 11.18*fem,
                        height: 21.3*fem,
                      ),
                    ),
                    Center(
                      // level1practicetestdny (0:15)
                      child: Text(
                        'Level 1 Practice Test',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // group5591Kfo (0:18)
                padding: EdgeInsets.fromLTRB(30*fem, 13*fem, 142*fem, 15*fem),
                width: double.infinity,
                decoration: const BoxDecoration (
                  color: Color(0xff024c90),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // vector2q7 (0:89)
                      margin: EdgeInsets.fromLTRB(0*fem, 2.3*fem, 99.82*fem, 0*fem),
                      width: 11.18*fem,
                      height: 21.3*fem,
                      child: Image.asset(
                        'assets/images/vector.png',
                        width: 11.18*fem,
                        height: 21.3*fem,
                      ),
                    ),
                    Text(
                      // progressYoT (0:20)
                      'Progress',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 35*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autobiographer6d (F6Pb7AM1TN1NZsp4dFepau)
                padding: EdgeInsets.fromLTRB(15*fem, 27*fem, 28.67*fem, 12*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group5590nC1 (0:21)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 71*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupcgzd7EH (F6PbzPNeyaNCTnADNtCGzd)
                            padding: EdgeInsets.fromLTRB(7*fem, 0*fem, 7*fem, 0*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // chapterlearningQ6u (0:54)
                                  margin: EdgeInsets.fromLTRB(30*fem, 0*fem, 0*fem, 6*fem),
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 25*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2102272797*ffem/fem,
                                        color: const Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Chapter ',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 25*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'LEARNING:',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 25*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  // Whf (0:52)
                                  '%',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    letterSpacing: -0.3039999962*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupfrxbF9T (F6PbNpZaodfi7VXQBYfrXb)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // BYu (0:51)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                  child: Text(
                                    '100',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5*ffem/fem,
                                      letterSpacing: -0.3039999962*fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // gridlinehXF (0:22)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                  width: 346.33*fem,
                                  height: 1*fem,
                                  decoration: const BoxDecoration (
                                    color: Color(0xff666666),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupr1hkEGH (F6Pc6PCfQcfMBWDhr4R1hK)
                            padding: EdgeInsets.fromLTRB(6*fem, 16*fem, 0*fem, 13*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupwmutYnm (F6PbWKM6Lw39WebmGWwmuT)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // HVT (0:50)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                        child: Text(
                                          '80',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: -0.3039999962*fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // gridlinenh7 (0:23)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                        width: 346.33*fem,
                                        height: 1*fem,
                                        decoration: const BoxDecoration (
                                          color: Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogrouphjupvoK (F6PbcUqVLtZfRCYuanHJuP)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // 4uX (0:49)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                        child: Text(
                                          '60',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: -0.3039999962*fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // gridlinen4q (0:24)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                        width: 346.33*fem,
                                        height: 1*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup4skh7cu (F6PbiZVh4PUVjLZDyW4Skh)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // TRs (0:48)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                        child: Text(
                                          '40',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: -0.3039999962*fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // gridlinemSZ (0:25)
                                        margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                        width: 346.33*fem,
                                        height: 1*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupbyvju2y (F6Pbq994Ue5RbxEVuVByVj)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 54*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // pvd (0:47)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                        child: Text(
                                          '20',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: -0.3039999962*fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // gridlineX4M (0:26)
                                        margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 0*fem),
                                        width: 346.33*fem,
                                        height: 1*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // chapters44H (0:53)
                                  margin: EdgeInsets.fromLTRB(22.67*fem, 0*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Chapters',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5*ffem/fem,
                                      letterSpacing: -0.1320000029*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group5589x9f (0:55)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupezuh6Wm (F6PdRbV1TzyACDVedTEzUh)
                                  padding: EdgeInsets.fromLTRB(7*fem, 0*fem, 7*fem, 1*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // chaptertestsdFo (0:88)
                                        margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 5*fem),
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
                                      Text(
                                        // LJd (0:86)
                                        '%',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: -0.3039999962*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupnv5xUfj (F6Pcu7Moc3oK37XEkJnv5X)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // doX (0:85)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                        child: Text(
                                          '100',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: -0.3039999962*fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // gridlinemPw (0:57)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                        width: 346.33*fem,
                                        height: 1*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroups8qo6x1 (F6PdWqqGLujAaE3hnjS8qo)
                                  padding: EdgeInsets.fromLTRB(6*fem, 16*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroup8t5tEoK (F6Pd1GrCc1KpwfUP4a8T5T)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // aMP (0:84)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                              child: Text(
                                                '80',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: -0.3039999962*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // gridlineUxZ (0:58)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                              width: 346.33*fem,
                                              height: 1*fem,
                                              decoration: BoxDecoration (
                                                color: Color(0xff666666),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupfzlhpFj (F6Pd72BdBfmvt9hPm7fzLH)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // kQH (0:83)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                              child: Text(
                                                '60',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: -0.3039999962*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // gridlineUbB (0:59)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                              width: 346.33*fem,
                                              height: 1*fem,
                                              decoration: BoxDecoration (
                                                color: Color(0xff666666),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogrouplktmRFX (F6PdCwBSLFTQ1Tp4JkLKtM)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // NAm (0:82)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                              child: Text(
                                                '40',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: -0.3039999962*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // gridlineUzV (0:60)
                                              margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                              width: 346.33*fem,
                                              height: 1*fem,
                                              decoration: BoxDecoration (
                                                color: Color(0xff666666),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupqfxdDx5 (F6PdJ1sJeEz3CeUTcwQfxD)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 49*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // Zm3 (0:81)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                              child: Text(
                                                '20',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: -0.3039999962*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // gridlineHww (0:61)
                                              margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 0*fem),
                                              width: 346.33*fem,
                                              height: 1*fem,
                                              decoration: BoxDecoration (
                                                color: Color(0xff666666),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // chaptersS49 (0:87)
                                        margin: EdgeInsets.fromLTRB(20.67*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Chapters',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: -0.1320000029*fem,
                                            color: Color(0xff000000),
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
                    Container(
                      // rectangle2xYH (0:17)
                      margin: EdgeInsets.fromLTRB(58*fem, 0*fem, 43.33*fem, 0*fem),
                      width: double.infinity,
                      height: 8*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(52*fem),
                        color: Color(0xff000000),
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