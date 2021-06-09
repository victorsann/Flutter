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
              color: Colors.blue[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      margin: const EdgeInsets.all(20.0),
                      child: Text('Child'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      margin: const EdgeInsets.all(20.0),
                      child: Text('Child'),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            color: Colors.white,
                            margin: const EdgeInsets.all(10.0),
                            child: Text('Child'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            margin: const EdgeInsets.all(10.0),
                            child: Text('Child'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.white,
                      margin: const EdgeInsets.all(20.0),
                      child: Text('Child'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.white,
                      margin: const EdgeInsets.all(20.0),
                      child: Text('Child'),
                    ),
                  )
                ], // <Widget>[]
              )),
        ));
  }
}
