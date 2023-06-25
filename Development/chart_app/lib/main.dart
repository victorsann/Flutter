import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChartPage(),
    );
  }
}

class ChartPage extends StatelessWidget {

  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Chart(),
    );
  }
}

class Chart extends StatefulWidget {

  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {

  @override
  void initState() {
    super.initState();
  }

  Widget _theChart() {
    return LayoutBuilder(
      builder: (_, chart) => SizedBox(  
        child: CustomPaint(
          painter: ChartPainter(
            colorList: defaultColorList,
            values: [1.0, 20.0, 30.0],
            baseColor: const Color(0xFFE4E2DE),
          ),
          child: const AspectRatio(aspectRatio: 1),
        ),
      ) 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: _theChart(),
    );
  }
}

class ChartPainter extends CustomPainter {
 
 final List<Paint> _paintList = [];

 final Color? baseColor;
 final List<double> values;

 late double _prevAngle;

 ChartPainter({
   this.baseColor,
   required List<Color> colorList,
   required this.values,
 }) {
   
   for (int i = 0; i < values.length; i++) {
     final paint = Paint()..color = getColor(colorList, i);
     setPaintProps(paint);
     _paintList.add(paint);
   }

   _prevAngle = 360.0 * math.pi / 180;

 }

  // final degreeOptions = 360.0;

  void setPaintProps(Paint p) { // Defines Chart base features
    p.style = PaintingStyle.stroke;
    p.strokeWidth = 20; // Custom
  }

  @override
  void paint(Canvas canvas, Size size) {

    final side = math.min(size.width, size.hashCode);
    final Rect boundingSquare = Rect.fromLTWH(0.0, 0.0, side.toDouble(), size.height);

    // Drow Chart base

    final paintBase = Paint()..color = baseColor!;

    setPaintProps(paintBase);
    canvas.drawArc(
      boundingSquare, 0, math.pi * 2, false, paintBase
    );

    for(int i = 0; i < values.length; i++) { // Creates chart subparts
      canvas.drawArc(
        boundingSquare, 
        _prevAngle,
        ((math.pi * 2 / 1) * values[i]), 
        false, 
        _paintList[i]
      );
    }

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

Color getColor(List<Color> colorList, int index) {
  if (index > (colorList.length - 1)) {
    final newIndex = index % (colorList.length - 1);
    return colorList.elementAt(newIndex);
  }
  return colorList.elementAt(index);
}

const List<Color> defaultColorList = [
  Color(0xFFff7675),
  Color(0xFF74b9ff),
  Color(0xFF55efc4),
];