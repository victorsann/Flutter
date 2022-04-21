import 'package:flutter/material.dart';
import 'package:mobx_aula/pageView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SetState(),
    );
  }
}


class SetState extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<SetState> {
  int _favorite = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Container(
       height: 100,
       width: 300,
       padding: EdgeInsets.all(20),
       alignment: Alignment.center,
       decoration: BoxDecoration(color: Colors.black),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
          Row(
           children: <Widget>[
             IconButton(
              color: Colors.pink,
              onPressed: () {
                setState(() {
                  _favorite++;
                });
              },
              icon: Icon(
                Icons.favorite,
                size: 40.0,
              )),
             Visibility(
               visible: _favorite > 0,
               child: Text(
                '$_favorite',
                style: TextStyle(color: Colors.pink, fontSize: 20),
               ),
             )
           ])
         ]),
        )
      ]),
    ));
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
