import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blueGrey,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.blueGrey,
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          label: 'School',
          backgroundColor: Colors.green,
        ),
      ],
      currentIndex: 1,
      selectedItemColor: Colors.white,
      onTap: null,
    );
  }
}
