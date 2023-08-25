import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';

import 'Pages/SplashScreen.dart';




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
      home:HomePage(),
    );
  }
}
// d
