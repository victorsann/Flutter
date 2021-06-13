import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "My App", home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 1000,
            width: 500,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.blue[800]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Transform(
                  transform: Matrix4.skewY(0.3)..rotateZ(-1 / 48.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                ),
                // Transform.rotate(
                //   angle: 3 / 4, // 45 deg)
                //   child: Container(
                //     height: 150,
                //     width: 150,
                //     color: Colors.white,
                //   ),
                // ),
                // Transform.scale(
                //   scale: 0.9,
                //   child: Container(
                //     height: 150,
                //     width: 150,
                //     color: Colors.yellow,
                //   ),
                // ),
                // Transform.translate(
                //   offset: Offset(2.0, 9.9),
                //   child: Container(
                //     height: 150,
                //     width: 150,
                //     color: Colors.yellow,
                //   ),
                // )
              ],
            )));
  }
}
