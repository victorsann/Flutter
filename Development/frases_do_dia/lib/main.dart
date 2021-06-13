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
  final List<String> children = <String>['First', 'Second', 'Third'];
  final List<int> colorCodes = <int>[600, 700, 800];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 1000,
            width: 500,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.blue[800]),
            child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: children.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    color: Colors.orange[colorCodes[index]],
                    child: Center(child: Text('${children[index]}')),
                  );
                })));
  }
}
