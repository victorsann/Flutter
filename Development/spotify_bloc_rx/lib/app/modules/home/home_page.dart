// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  
  final HomeController controller;

  const HomePage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: StreamBuilder(
        stream: widget.controller.counterStream,
        builder: (context, snapshot) => Center(
          child: Text(
            '${snapshot.data}',
            style: TextStyle( 
              fontSize: 30,
            ),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           widget.controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}