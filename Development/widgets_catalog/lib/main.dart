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

  @override
  Widget build(BuildContext context) {
   final PageController controller = PageController(initialPage: 0);
   return PageView(
     scrollDirection: Axis.horizontal,
     controller: controller,
     children: <Widget>[
       Container(
         color: Colors.blue[700],
         alignment: Alignment.center,
         child: Text(
           'First Page',
           style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            decoration: TextDecoration.none
           ),
         ),
       ),
       Container(
         color: Colors.blue[800],
         alignment: Alignment.center,
         child: Text(
          'Second Page',
           style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            decoration: TextDecoration.none
           ),
         ),
       ),
       Container(
         color: Colors.blue[900],
         alignment: Alignment.center,
         child: Text(
           'Third Page',
           style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            decoration: TextDecoration.none
           ),
         ),
       ),
     ],
   );
  }
}
