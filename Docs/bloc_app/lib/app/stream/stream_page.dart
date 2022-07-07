

// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class StreamCounter extends StatefulWidget {

  const StreamCounter({Key? key}) : super(key: key);

  @override
  State<StreamCounter> createState() => _StreamCounter();
}

class _StreamCounter extends State<StreamCounter> {
  
  final controller = StreamController.broadcast();
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Streams',
        ),
      ),
      body: Center(  
        child: StreamBuilder(
          initialData: value,
          stream: controller.stream,
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have pushed the button this many times:'),
                Text('${snapshot.data}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(  
        onPressed: () => controller.add(++value),
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}