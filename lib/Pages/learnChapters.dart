import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';

class learnChapters extends StatefulWidget {
  const learnChapters({super.key});

  @override
  _learnChaptersState createState() => _learnChaptersState();
}
class _learnChaptersState extends State<learnChapters> {
  List<bool> chapterStatus = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 310;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 1.5;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF034D91),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/vector-5Rj.png', // Replace with the actual image path
            color: Colors.white,
            height: 24, // Adjust the height as needed
            width: 24,  // Adjust the width as needed
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage
            );
          },
        ),
        title: const Text(
          'Learn Chapters',
          style: TextStyle(
            color: Colors.white, // Set the text color to white
            fontSize: 26,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: 10, // Number of items in the grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 1 * fem, // Spacing between columns
          mainAxisSpacing: 0 * fem, // Spacing between rows
        ),
        itemBuilder: (context, index) {
          return buildGridItem(context, fem, ffem, index);
        },
      ),
    );
  }

  Widget buildGridItem(BuildContext context, double fem, double ffem, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          if (!chapterStatus[index]) {
            chapterStatus[index] = true;
          }
        });
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: 141 * fem,
        height: 89 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff000000)),
          color: const Color(0xffa6cdf2),
          borderRadius: BorderRadius.circular(15 * fem),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 17 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                  children: [
                    const TextSpan(
                      text: 'Chapter ',
                    ),
                    TextSpan(
                      text: '${index + 1}', // Adjust this based on your data
                      style: TextStyle(
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                chapterStatus[index] ? 'Complete' : 'Incomplete',
                style: TextStyle(
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: chapterStatus[index] ? Color(0xff58bf47) : Color(0xfffa7470),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}