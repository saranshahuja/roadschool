String globalUserId;  // Global variable to store the user ID
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../utils.dart'; // Importing utilities as used in your SplashScreen




class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

// updated ui
class _loginpageState extends State<loginpage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  globalUserId = userCredential.user?.uid;  // Save the user ID to the global variable
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  String? _verificationId;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      // Reusing the background and layout from SplashScreen
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // autographicWJV (6ovoLydYjgYVsNWSUvXhK)
                padding: EdgeInsets.fromLTRB(0 * fem, 11 * fem, 0 * fem, 73 * fem),
                width: double.infinity,
                height: 551 * fem,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/image-4-bg.png',
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autographic2h (6ovoWe27enoughGBDbbipwK)
                      margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      padding: EdgeInsets.fromLTRB(
                          124 * fem, 105 * fem, 124 * fem, 63 * fem),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/image-3-bg.png',
                          ),
                        ),
                      ),
                      child: Center(
                        // image2w2R (1:10)
                        child: SizedBox(
                          width: 300 * fem,
                          height: 194 * fem,
                          child: Image.asset(
                            'assets/images/iconwtbg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(labelText: 'Phone Number'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await _auth.verifyPhoneNumber(
                          phoneNumber: _phoneNumberController.text,
                          verificationCompleted:
                              (PhoneAuthCredential credential) async {
                            await _auth.signInWithCredential(credential);
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          verificationFailed: (FirebaseAuthException e) {
                            print(e.message);
                          },
                          codeSent: (String verificationId, int? resendToken) {
                            _verificationId = verificationId;
                          },
                          codeAutoRetrievalTimeout: (String verificationId) {},
                          timeout: Duration(seconds: 60),
                        );
                      },
                      child: Text('Send OTP'),
                    ),
                    TextField(
                      controller: _otpController,
                      decoration: InputDecoration(labelText: 'Enter OTP'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                          verificationId: _verificationId!,
                          smsCode: _otpController.text,
                        );
                        await _auth.signInWithCredential(credential);
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: Text('Verify'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
