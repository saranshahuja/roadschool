import 'package:flutter/material.dart';
import 'package:roadschool/Pages/Homepage.dart';

class LearnChapters extends StatefulWidget {
  const LearnChapters({Key? key}) : super(key: key);

  @override
  _LearnChaptersState createState() => _LearnChaptersState();
}

class _LearnChaptersState extends State<LearnChapters> {
  List<bool> chapterStatus = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 350;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 1.5;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF034D91),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/vector-5Rj.png',
            color: Colors.white,
            height: 24,
            width: 24,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: Text(
          'Learn Chapters',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1 * fem,
          mainAxisSpacing: 10 * fem, // Adjusted spacing between rows
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
                      text: '${index + 1}',
                      style: TextStyle(
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
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
