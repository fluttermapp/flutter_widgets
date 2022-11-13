//!ListWheelScrollView

import 'package:flutter/material.dart';

class Widget131 extends StatefulWidget {
  const Widget131({Key? key}) : super(key: key);

  @override
  _Widget131State createState() => _Widget131State();
}

class _Widget131State extends State<Widget131> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 100,
      // diameterRatio: 2,
      // offAxisFraction: 2,
      // squeeze: 2,
      children: List.generate(
        20,
        (index) => ListTile(
          title: const Text('Flutter Mapp'),
          onTap: () {},
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.menu),
        ),
      ),
    );
  }
}
