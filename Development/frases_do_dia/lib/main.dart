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
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.white),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 260, maxHeight: 80),
                      child: Container(
                        color: Colors.yellow,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Text.rich(TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Some text that you want to',
                              style: TextStyle(fontSize: 20)),
                          TextSpan(
                              text: ' break',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ])),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
