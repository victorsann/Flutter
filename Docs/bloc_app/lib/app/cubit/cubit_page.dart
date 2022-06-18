// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:bloc_app/app/cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class MyCubitPage extends StatefulWidget {
  
  const MyCubitPage({Key? key}) : super(key: key);

  @override
  State<MyCubitPage> createState() => _MyCubitPageState();
}

class _MyCubitPageState extends State<MyCubitPage> {

  final counterCubit = CounterCubit(0);
  
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Cubit'),
      ),
      body: Center(  
        child: Text(
          '${counterCubit.state}',
          style: TextStyle(  
            fontSize: 45
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(  
        onPressed: () => counterCubit.increment(),
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }

  }




