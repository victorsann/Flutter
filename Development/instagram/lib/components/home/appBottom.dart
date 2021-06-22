import 'package:flutter/material.dart';
import 'package:instagram/constants/colorPallet.dart';

class AppBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: DarkTheme,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_label),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.border_style_outlined),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        )
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: LightTheme,
      // onTap: _onItemTapped,
    );
  }
}
