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
        body: Center(
      child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(color: Colors.blue[800]),
          child: Container(
              child: Padding(
            padding: EdgeInsets.all(100),
            child: Container(
              decoration: BoxDecoration(color: Colors.yellow),
            ),
          ))),
    ));
  }
}
