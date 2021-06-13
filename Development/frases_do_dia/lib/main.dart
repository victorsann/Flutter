import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "My App", home: Scaffold(body: MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Container(
          color: Colors.blue[700],
          alignment: Alignment.center,
          child: Text('Page One'),
        ),
        Container(
          color: Colors.blue[800],
          alignment: Alignment.center,
          child: Text('Page Two'),
        ),
        Container(
          color: Colors.blue[900],
          alignment: Alignment.center,
          child: Text('Page Three'),
        )
      ],
    );
  }
}
