// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import './home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 final HomeController controller = HomeController();

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QUALQUER COISA')),
      body: Container(
        alignment: Alignment.center,
        child: Observer(
          builder: (_) {
            return Text(
              '${controller.amount}',
              style: TextStyle(  
                fontSize: 30,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(  
        onPressed: controller.increment,
        child: Icon(Icons.add)
      ),
    );
  }
}