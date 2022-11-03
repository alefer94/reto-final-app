import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      selectedColor: Colors.black.withOpacity(0.8),
      unSelectedColor: Colors.black.withOpacity(0.8),
      iconSize: 30,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.house_outlined),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.crop_landscape),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.badge_outlined),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.person_outline_outlined),
        ),
      ],
    );
  }
}
