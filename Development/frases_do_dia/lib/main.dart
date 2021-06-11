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
          width: 500,
          decoration: BoxDecoration(color: Colors.blue[900]),
          child: ListView(children: [
            for (var i = 0; i < 10; i++)
              LimitedBox(
                maxHeight: 200,
                maxWidth: 100,
                child: Container(
                    margin: EdgeInsets.all(1),
                    decoration: BoxDecoration(color: Colors.white)),
              )
          ])),
    ));
  }
}
