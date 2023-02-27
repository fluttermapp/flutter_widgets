//!NavigationDrawer

import 'package:flutter/material.dart';

class Widget140C extends StatelessWidget {
  const Widget140C({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
      ),
      drawer: const NavigationDrawer(
        children: [
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Home'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Home'),
          ),
        ],
      ),
    );
  }
}
