// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


// import 'package:bloc_app/app/bloc/increment/counter.dart';

// import 'package:bloc_app/app/bloc/viaCep/via_cep_page.dart';

// import 'package:bloc_app/app/stream/stream_page.dart';

import 'package:bloc_app/app/cubit/counter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Counter(),
      // home: const Counter(),
      // home: const ViaCepPage(),
      // home: StreamCounter(),
    );
  }
}
