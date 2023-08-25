import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/textelementsstyles.dart';

void main() {
  runApp(ProgressScreen());
}

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Progress',
          style: AppBarTitle,
        ),
        backgroundColor: const Color(0xFF034D91),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            children: [


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
