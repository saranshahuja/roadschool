import 'package:flutter/material.dart';
import '../utils.dart';


class SplashScreenpage extends StatelessWidget {
  const SplashScreenpage({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          // homeschooledTf (1:2)
          onPressed: () {},
          style: TextButton.styleFrom (
            padding: EdgeInsets.zero,
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 85*fem),
            width: double.infinity,
            decoration: BoxDecoration (
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(55*fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // autobiographerF7f (6ovo54vPY337YWyZEJNAJm)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 132*fem),
                  width: double.infinity,
                  decoration: const BoxDecoration (
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/images/image-5-bg.png',
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autographicWJV (6ovoLydYjgYVsNWSUvXhK)
                        padding: EdgeInsets.fromLTRB(0*fem, 11*fem, 0*fem, 73*fem),
                        width: double.infinity,
                        height: 551*fem,
                        decoration: const BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/images/image-4-bg.png',
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autographic2h (6ovoWe27enoughGBDbbipwK)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                              padding: EdgeInsets.fromLTRB(124*fem, 104*fem, 124*fem, 63*fem),
                              width: double.infinity,
                              decoration: const BoxDecoration (
                                image: DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/images/image-3-bg.png',
                                  ),
                                ),
                              ),
                              child: Center(
                                // image2w2R (1:10)
                                child: SizedBox(
                                  width: 213*fem,
                                  height: 194*fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Image.asset(
                                      'assets/images/image-2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // welcometoroadschoolEXK (1:9)
                              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                              constraints: BoxConstraints (
                                maxWidth: 256*fem,
                              ),
                              child: Text(
                                'Welcome to\nRoad School!',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 40*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff024c90),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                        constraints: BoxConstraints (
                          maxWidth: 328*fem,
                        ),
                        child: Text(
                          'Learn and test yourself on the ICBC questions that you will encounter on the official ICBC Learner’s Test.',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 22*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [


                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: SizedBox(
                        height: 100,
                        width: 150,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(26*fem, 4*fem, 18.5*fem, 4*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0xff024c90),
                              borderRadius: BorderRadius.circular(16*fem),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.5*fem, 0*fem),
                                  child: Text(
                                    'Next',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 19*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2631578947*ffem/fem,
                                      color: const Color(0xfff6f6f6),
                                    ),
                                  ),
                                ),
                                Container(

                                    padding: const EdgeInsets.all(5),

                                    child: const Icon(Icons.navigate_next, color: Colors.white,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}