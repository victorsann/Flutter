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
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 100,
              )),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 70,
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 100,
              )),
        ],
      ),
    ));
  }
}
