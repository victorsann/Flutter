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
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: DropdownButton<String>(
               hint: Text('DropdownButton'),
               icon: const Icon(Icons.arrow_drop_down),
               iconSize: 24,
               elevation: 16,
               style: const TextStyle(color: Colors.deepPurple),
               underline: null,
               onChanged: (_) {},
               items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
                 return DropdownMenuItem<String>(
                   value: value,
                   child: Text(value),
                 );
               }).toList(),
              )
             ),
             Container(
               child: Column(
                 children: [
                  ElevatedButton(
                   onPressed: null,
                   child: Text('ElevatedButton'),
                  ),
                  ElevatedButton(
                   onPressed: () {},
                   child: Text('ElevatedButton'),
                  ),
                 ],
               ),
             ),
             Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 IconButton(
                   color: Colors.pink,
                   icon: Icon(Icons.favorite),
                   onPressed: () {},
                 ),
                 IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.cancel),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.add),
                  onPressed: () {},
                )
               ],
              ),
            ),
            Container(
              child: OutlinedButton(
               onPressed: () {},
               child: const Text('OutlinedButton'),
             ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(  
                children: [
                 TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: null,
                  child: const Text('Disabled'),
                ),
                const SizedBox(height: 30),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Enabled'),
                 )
               ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
