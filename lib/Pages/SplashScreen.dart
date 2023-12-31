import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';
import '../utils.dart';
import 'package:roadschool/Pages/login.dart';

class SplashScreenpage extends StatefulWidget {
  @override
  _SplashScreenpageState createState() => _SplashScreenpageState();
}
class _SplashScreenpageState extends State<SplashScreenpage> {
  bool _isChecked = false; // State for the checkbox
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
              borderRadius: BorderRadius.circular(0*fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // autobiographerF7f (6ovo54vPY337YWyZEJNAJm)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 50*fem),
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
                              padding: EdgeInsets.fromLTRB(124*fem, 105*fem, 124*fem, 63*fem),
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
                                  width: 300*fem,
                                  height: 194*fem,
                                    child: Image.asset(
                                      'assets/images/iconwtbg.png',
                                      fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // welcometoroadschoolEXK (1:9)
                              margin: EdgeInsets.fromLTRB(1*fem, 4*fem, 0*fem, 0*fem),
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
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 20 * fem, 8 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 328 * fem,
                        ),
                        child: Text(
                          'Learn and test yourself on the ICBC questions that you will encounter on the official ICBC Learner’s Test.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      CheckboxListTile(
                        title: Text(
                          'I agree to the terms and conditions', // Change this to your desired hyperlink text
                          style: TextStyle(
                            color: Colors.blueAccent, // Change the color as needed
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: SizedBox(
                              height: 60,
                              width: 150,
                              child: TextButton(
                                onPressed: _isChecked
                                    ? () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => loginpage(),
                                    ),
                                  );
                                }
                                    : null, // Disable button if checkbox is not checked
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      30 * fem, 2 * fem, 15 * fem, 2 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff024c90),
                                    borderRadius: BorderRadius.circular(16 * fem),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Next',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 19 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2631578947 * ffem / fem,
                                            color: const Color(0xfff6f6f6),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        child: const Icon(
                                          Icons.navigate_next,
                                          color: Colors.white,
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
                  ],
              ),
          ),
        ],
        ),
      ),
      ),
      ),
    );
  }
}