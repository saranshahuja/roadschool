import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// class learnChapters extends StatefulWidget {
//   const learnChapters({super.key});
//
//   @override
//   State<learnChapters> createState() => _learnChaptersState();
// }
//
// class _learnChaptersState extends State<learnChapters> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//
//       ),
//     );
//   }
// }
//
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Chapter Index and Stateful Text'),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 20),
//             ChapterGrid(),
//             SizedBox(height: 20),
//             StatefulText(),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
void main() => runApp(const Test());

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();

}

class _TestState extends State<Test> {
  String textToShow = "";
  @protected
  @mustCallSuper
  void initState(){
    textToShow = 'Incomplete';
  }


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SelectionContainer.disabled Sample')),
        body: Builder(
            builder: (BuildContext context) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 10, // Number of chapters
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              textToShow = 'Complete';}
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Chapter ${index + 1}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(textToShow)
                      ]
                  );
                },
              );
            }
        ),
      ),
    );
  }
}
