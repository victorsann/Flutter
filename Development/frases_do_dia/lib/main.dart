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
        height: 700,
        width: 200,
        decoration: BoxDecoration(color: Colors.blue[800]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 90,
                width: 200,
                color: Colors.yellow,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Container(
                  color: Colors.orange,
                  alignment: Alignment.center,
                  child: Text('All', style: TextStyle(fontSize: 20)),
                )),
            Container(
              height: 90,
              width: 200,
              color: Colors.yellow,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 140),
              child: Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text('left only', style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 90,
              width: 200,
              color: Colors.yellow,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(right: 65),
              child: Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text('right only', style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 90,
              width: 200,
              color: Colors.yellow,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(top: 65),
              child: Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text('Top only', style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 90,
              width: 200,
              color: Colors.yellow,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(bottom: 30),
              child: Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text('Bottom only', style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 90,
              width: 200,
              color: Colors.yellow,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 55),
              child: Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text('Symmetric', style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
