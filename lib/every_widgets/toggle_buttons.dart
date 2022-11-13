//! toggle buttons

import 'package:flutter/material.dart';

class Widget206 extends StatefulWidget {
  const Widget206({Key? key}) : super(key: key);

  @override
  State<Widget206> createState() => _Widget206State();
}

class _Widget206State extends State<Widget206> {
  List<bool> isSelected = [
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: const [
          Icon(Icons.home),
          Icon(Icons.settings),
          Icon(Icons.person),
        ],
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
        isSelected: isSelected,
      ),
    );
  }
}
