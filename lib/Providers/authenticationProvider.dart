import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> verifyPhoneNumber(String phoneNumber) async {
  await _auth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    timeout: const Duration(seconds: 60),
    verificationCompleted: (PhoneAuthCredential credential) async {
      await _auth.signInWithCredential(credential);
    },
    verificationFailed: (FirebaseAuthException e) {
      print(e.message);
    },
    codeSent: (String verificationId, int? resendToken) async {
      String smsCode = 'The OTP that the user has entered';

      // Create a PhoneAuthCredential with the provided verification ID and OTP code
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      // Sign in the user with the credential
      await _auth.signInWithCredential(phoneAuthCredential);
    },
    codeAutoRetrievalTimeout: (String verificationId) {},
  );
}
