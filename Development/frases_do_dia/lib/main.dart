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
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 20,
                width: 100,
                margin: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 100,
                width: 50,
                margin: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                child: FittedBox(
                  fit: BoxFit.none,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
