// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:bloc_app/app/bloc/increment/app_bloc.dart';
import 'package:flutter/material.dart';

class MyBlocPage extends StatefulWidget {

  const MyBlocPage({Key? key}) : super(key: key);

  @override
  State<MyBlocPage> createState() => _MyBlocPageState();
}

class _MyBlocPageState extends State<MyBlocPage> {

  final counterBloc = CounterBloc(0);
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bloc'),
      ),
      body: Center(  
        child: Text(
          '${counterBloc.state}',
          style: TextStyle(  
            fontSize: 45
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(  
        onPressed: () => counterBloc.add(IncrementEvent()),
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }

  }




