import 'package:flutter/material.dart';
import 'package:instagram/components/home/homePage.dart';
import 'package:instagram/constants/colorPallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: DarkTheme),
      home: HomePage(),
    );
  }
}
