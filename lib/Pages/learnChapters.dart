import 'package:flutter/material.dart';

void main() => runApp(const Test());

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}
class _TestState extends State<Test> {
  String textToShow = "";
  @override
  @protected
  @mustCallSuper
  void initState(){
    super.initState();
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Chapter ${index + 1}',
                                style: const TextStyle(
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