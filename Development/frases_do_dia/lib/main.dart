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
            child: GridView.count(
              crossAxisCount: 4,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text('first'),
                  color: Colors.orange[100],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('second'),
                  color: Colors.orange[200],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('third'),
                  color: Colors.orange[300],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('fourth'),
                  color: Colors.orange[400],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('fifth'),
                  color: Colors.orange[500],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('sixth'),
                  color: Colors.orange[600],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('seventh'),
                  color: Colors.orange[700],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('eighth'),
                  color: Colors.orange[800],
                ),
              ],
            )));
  }
}
