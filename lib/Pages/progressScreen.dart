import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ProgressScreen());
}

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 358 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(55 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 27 * fem),
                padding:
                EdgeInsets.fromLTRB(30 * fem, 20.5 * fem, 100 * fem, 7.5 * fem),
                width: double.infinity,
                height: 109 * fem,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFF),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 5.2 * fem),
                      width: 11.18 * fem,
                      height: 21.3 * fem,
                      child: Image.asset(
                        'assets/images/vector.png',
                        width: 11.18 * fem,
                        height: 21.3 * fem,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Level 1 Practice Test',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 27 * fem),
                width: double.infinity,
                height: 71 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff024c90),
                ),
                child: Center(
                  child: Text(
                    'Progress',
                    style: GoogleFonts.inter(
                      fontSize: 35 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(23 * fem, 0 * fem, 0 * fem, 20 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.inter(
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2102272797 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Chapter ',
                            style: GoogleFonts.inter(
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'LEARNING:',
                            style: GoogleFonts.inter(
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: BarChart(
                        colors: [
                          Colors.deepOrange.shade100,
                          Colors.deepOrange.shade200,
                          Colors.deepOrange.shade300,
                          Colors.deepOrange.shade400,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


const defaultSpacing = 16.0;

class BarChart extends StatelessWidget {
  const BarChart({
    Key? key,
    this.colors,
    this.values = const [200, 100, 400, 30],
  }) : super(key: key);

  final List<Color>? colors;
  final List<double> values;
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final barWidth =
            (constraints.maxWidth - defaultSpacing * values.length) /
                values.length;
        return CustomPaint(
          size: Size(constraints.maxWidth, 200),
          painter: BarChartPainter(
            values: values,
            colors: colors ??
                List<int>.generate(values.length, (i) => i + 1).map(
                      (e) {
                    final opacity = e / values.length;
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(opacity);
                  },
                ).toList(),
            barWidth: barWidth,
          ),
        );
      },
    );
  }
}

class BarChartPainter extends CustomPainter {
  BarChartPainter({
    required this.values,
    required this.colors,
    this.barWidth = 24.0,
  });

  final List<double> values;
  final List<Color> colors;
  final double barWidth;

  @override
  void paint(Canvas canvas, Size size) {
    // Your existing paint code here...
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
