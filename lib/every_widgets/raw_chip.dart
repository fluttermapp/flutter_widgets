//! rawchip

import 'package:flutter/material.dart';

class Widget162 extends StatelessWidget {
  const Widget162({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RawChip(
        label: const Text('RawChip'),
        avatar: const Icon(Icons.person),
        deleteIcon: const Icon(Icons.remove_circle),
        onPressed: () {},
        onDeleted: () {},
      ),
    );
  }
}
