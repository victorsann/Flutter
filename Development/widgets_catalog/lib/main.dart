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
    return Scaffold(
      body: GridView.count(
       crossAxisCount: 4,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text('1'),
            color: Color(0xFFFAFAFA),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('2'),
            color: Color(0xFFF5F5F5),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('3'),
            color: Color(0xFFFEEEEEE),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('4'),
            color: Color(0xFFFE0E0E0),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('5'),
            color: Color(0xFFD6D6D6),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('6'),
            color: Color(0xFFBDBDBD),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('7'),
            color: Color(0xFF9E9E9E),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('8'),
            color: Color(0xFF757575),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('9'),
            color: Color(0xFF616161),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('10'),
            color: Color(0xFF424242),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('11'),
            color: Color(0xFF303030),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('12'),
            color: Color(0xFF212121),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('13'),
            color: Color(0xFFECEFF1),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('14'),
            color: Color(0xFFCFD8DC),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('15'),
            color: Color(0xFFB0BEC5),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('16'),
            color: Color(0xFF90A4AE),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('17'),
            color: Color(0xFF78909C),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('18'),
            color: Color(0xFF607D8B),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('19'),
            color: Color(0xFF546E7A),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('20'),
            color: Color(0xFF455A64),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('21'),
            color: Color(0xFF37474F),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('22'),
            color: Color(0xFF263238),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('23'),
            color: Color(0xFFEDE7F6),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('24'),
            color: Color(0xFFD1C4E9),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('25'),
            color: Color(0xFFB39DDB),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('26'),
            color: Color(0xFF9575CD),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('27'),
            color: Color(0xFF7E57C2),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('28'),
            color: Color(0xFF673AB7),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('29'),
            color: Color(0xFF5E35B1),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('30'),
            color: Color(0xFF512DA8),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('31'),
            color: Color(0xFF4527A0),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('32'),
            color: Color(0xFF311B92),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('33'),
            color: Color(0xFFE8EAF6),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('34'),
            color: Color(0xFFC5CAE9),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('35'),
            color: Color(0xFF9FA8DA),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('36'),
            color: Color(0xFF7986CB),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('37'),
            color: Color(0xFF5C6BCB),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('38'),
            color: Color(0xFF5C6BC0),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('39'),
            color: Color(0xFF3F51B5),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('40'),
            color: Color(0xFF3949AB),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('41'),
            color: Color(0xFF303F9F),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('42'),
            color: Color(0xFF283593),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('43'),
            color: Color(0xFF1A237E),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('44'),
            color: Color(0xFFE3F2FD),
          ),
          
          
        ],
      )
    );
  }
}
