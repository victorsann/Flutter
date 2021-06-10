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
        decoration: BoxDecoration(color: Colors.blue[800]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 150,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.topRight,
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.bottomLeft,
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: Text(
                    'Child',
                    style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.bottomRight,
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
