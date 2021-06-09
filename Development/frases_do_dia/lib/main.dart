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
            child: Center(child: Text("Children")),
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
