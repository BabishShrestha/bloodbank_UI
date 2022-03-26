import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: kAppBarColor,
      enableFeedback: true,
      unselectedItemColor: kUnselectedColor,
      elevation: 0,
      items: _BottomNavItems,
    );
  }
}

//list of bottom nav bar items
List<BottomNavigationBarItem> _BottomNavItems = const [
  BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: kPrimaryScaffoldColor),
  BottomNavigationBarItem(
      icon: Icon(Icons.post_add_outlined), label: 'Add post'),
  BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: 'message'),
  BottomNavigationBarItem(
      icon: Icon(Icons.menu_book_rounded), label: 'message'),
  BottomNavigationBarItem(icon: Icon(Icons.slow_motion_video), label: 'dont'),
];
