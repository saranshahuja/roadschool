import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Pages/SplashScreen.dart';
import 'Pages/learnChapters.dart';
import 'Pages/progressScreen.dart';
import 'firebase_options.dart';




 main() {
//   await Firebase.initializeApp(
// options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: learnChapterpage(),
    );
  }
}
