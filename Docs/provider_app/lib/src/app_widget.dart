import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/cart.dart';

class AppWidget extends StatelessWidget {
  
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: {
        '/': (context) => const Home(),
        '/cart': (context) => const Cart() 
      },
    );
  }
}