import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'core/style/colors.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      theme: ThemeData(  
        backgroundColor: darkPurple,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    ).modular();
  }

}