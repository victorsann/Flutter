// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  return runApp(
    ModularApp(module: AppModule(), child: AppWidget())
  );
}

class AppModule extends Module {

  @override 
  List<Bind> get binds => [];

  @override 
  List<ModularRoute> get routes => [
     ChildRoute('/', child: (context, args) => HomePage())
  ];
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Text('This is initial page'),
      ),
    );
  }
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '',
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: Modular.routeInformationParser, 
      routerDelegate: Modular.routerDelegate
    );
  }
}