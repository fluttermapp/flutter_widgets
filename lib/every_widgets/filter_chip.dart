//!FilterChip

import 'package:flutter/material.dart';

class Widget101 extends StatefulWidget {
  const Widget101({Key? key}) : super(key: key);

  @override
  State createState() => Widget101State();
}

class Widget101State extends State<Widget101> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilterChip(
        label: const Text('FilterChip'),
        selected: isSelected,
        onSelected: (bool value) {
          setState(() {
            isSelected = !isSelected;
          });
        },
        avatar: const Text('F'),
      ),
    );
  }
}
