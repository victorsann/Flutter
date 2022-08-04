// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:bloc_app/app/bloc/increment/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatefulWidget {

  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  final counterBloc = CounterBloc(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Bloc'),
      ),
      body: Center(  
        child: BlocBuilder<CounterBloc, int>(  
          bloc: counterBloc,
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have pushed the button this many times:'),
                Text('${counterBloc.state}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            );   
          },
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




