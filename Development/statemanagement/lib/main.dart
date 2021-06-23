import 'package:flutter/material.dart';
import 'package:statemanagement/pageView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter State Management ',
      home: MyPageView(),
    );
  }
}
