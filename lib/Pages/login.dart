import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../utils.dart';  // Importing utilities as used in your SplashScreen

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}
// updated ui
class _loginpageState extends State<loginpage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Your Background image or decoration here
              // BackgroundImageOrDecoration(),
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
                    verificationCompleted: (PhoneAuthCredential credential) async {
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
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
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
        ),
      ),
    );
  }
}
