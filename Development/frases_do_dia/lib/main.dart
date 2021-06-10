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
                  height: 200,
                  width: 350,
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.white),
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.yellow),
                      child: Text(
                        'Child',
                        style: TextStyle(color: Colors.blue[800], fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
