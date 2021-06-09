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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.zoom_out_map_outlined,
                  color: Colors.red,
                  size: 50.0,
                ),
                Icon(
                  Icons.hail,
                  color: Colors.green,
                  size: 50.0,
                ),
                Icon(
                  Icons.face,
                  color: Colors.blue,
                  size: 50.0,
                ),
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
