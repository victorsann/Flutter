import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // int _selectedIndex = 0;

  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // List<Widget> _index = <Widget>[
  //   Text('Home', style: optionStyle),
  //   Text('Search', style: optionStyle),
  //   Text('Profile', style: optionStyle),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: IconButton(
  //         icon: Icon(Icons.menu),
  //         onPressed: () {},
  //       ),
  //       title: Text('AppBar'),
  //       actions: [
  //         IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
  //       ],
  //     ),
  //     body: Center(child: _index.elementAt(_selectedIndex)),
  //     bottomNavigationBar: BottomNavigationBar(
  //       items: <BottomNavigationBarItem>[
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.search),
  //           label: 'Search',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.person),
  //           label: 'Profile',
  //         ),
  //       ],
  //       currentIndex: _selectedIndex,
  //       selectedItemColor: Colors.blue[800],
  //       onTap: _onItemTapped,
  //     ),
  //   );
  // }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _openDrawer();
          },
        ),
        title: Text('AppBar'),
      ),
      drawer: Drawer(
        child: Center(  
          child: ElevatedButton(  
            child: Text('Close Drawer'),
            onPressed: () {
              _closeDrawer();
            },
          ),
        ),
      ),
    );
  }
}
