import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 final List<String> children = <String>['First', 'Second', 'Third', 'Four', 'Fifth', 'Sixth'];
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         alignment: Alignment.center,
         child: ListView.builder(
           itemCount: children.length,
           itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(bottom: 1),
              decoration: BoxDecoration(color: Colors.blue[800]),
              child: Center(child: Text('${children[index]}')),
            );
           }
         ))
        );
       }
        
}
