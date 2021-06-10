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
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [],
        title: Text('My App'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.purple),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text('Text'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0), color: Colors.white),
              height: 200,
              margin: EdgeInsets.all(20),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Text'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0), color: Colors.white),
              height: 200,
              margin: EdgeInsets.all(20),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   child: Text('Text'),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(0), color: Colors.white),
            //   height: 200,
            //   margin: EdgeInsets.all(20),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(color: Colors.purple),
          height: 100.0,
        ),
      ),
    );
  }
}
