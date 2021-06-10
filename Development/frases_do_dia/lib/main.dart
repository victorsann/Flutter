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
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 150,
            width: 500,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 500,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 150,
            width: 500,
          ),
        ],
      ),
    ));
  }
}
