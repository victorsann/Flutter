// ignore_for_file: prefer_const_constructors

import 'package:bloc_app/app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
      
  const Counter({Key? key}) : super(key: key);
  
  @override
  State<Counter> createState() => _CounterState();
}
    
class _CounterState extends State<Counter> {
    
  final counterCubit = CounterCubit(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Cubit'),
      ),
      body: Center(  
        child: StreamBuilder(
          stream: counterCubit.stream,
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have pushed the button this many times:'),
                Text('${counterCubit.state}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            );
          },
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
