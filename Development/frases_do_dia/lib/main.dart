import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: null,
                  child: Text('ElevatedButton'),
                ),
                ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text('ElevatedButton'),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            height: 300,
            width: 300,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
          ),
        ));
  }
}
