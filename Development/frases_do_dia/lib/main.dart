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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: FractionallySizedBox(
                  heightFactor: 1.0,
                  widthFactor: 0.6,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: FractionallySizedBox(
                  heightFactor: 0.6,
                  widthFactor: 1.0,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
