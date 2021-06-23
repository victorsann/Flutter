import 'dart:developer';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '$_counter',
                  style: TextStyle(color: Colors.black, fontSize: 80),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  child: Text('Incrementar'),
                )),
          ],
        ),
      ),
    );
  }
}
