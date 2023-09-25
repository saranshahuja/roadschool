import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  String? _verificationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
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
                    margin: EdgeInsets.all(9),
                    padding: EdgeInsets.all(10),
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
                      child: SizedBox(
                        width: 300,
                        height: 194,
                        child: Image.asset(
                          'assets/images/iconwtbg.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        prefixText: '+1 ',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await _auth.verifyPhoneNumber(
                        phoneNumber: '+1 ' + _phoneNumberController.text,
                        verificationCompleted:
                            (PhoneAuthCredential credential) async {
                          await _auth.signInWithCredential(credential);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
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
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: _otpController,
                      decoration: InputDecoration(labelText: 'Enter OTP'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      PhoneAuthCredential credential =
                      PhoneAuthProvider.credential(
                        verificationId: _verificationId!,
                        smsCode: _otpController.text,
                      );
                      await _auth.signInWithCredential(credential);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Verify'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
