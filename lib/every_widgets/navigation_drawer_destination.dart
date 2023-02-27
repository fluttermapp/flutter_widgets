//!NavigationDrawerDestination

import 'package:flutter/material.dart';

class Widget140B extends StatelessWidget {
  const Widget140B({Key? key}) : super(key: key);

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
