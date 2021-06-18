import 'package:flutter/material.dart';
import 'package:nubank/constants.dart';
import 'package:nubank/screens/home-screen/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank',
      theme: ThemeData(
          primaryColor: NprimaryColor, scaffoldBackgroundColor: NprimaryColor),
      home: HomeScrren(),
    );
  }
}
