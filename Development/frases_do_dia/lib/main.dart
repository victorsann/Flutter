import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Center(
          child: Container(
            alignment: Alignment.center,
            child: Center(
                child: Text(
              'Children',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            height: 300,
            width: 300,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
          ),
        ));
  }
}
