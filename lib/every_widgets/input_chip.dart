//!InputChip

import 'package:flutter/material.dart';

class Widget123 extends StatefulWidget {
  const Widget123({Key? key}) : super(key: key);

  @override
  State<Widget123> createState() => _Widget123State();
}

class _Widget123State extends State<Widget123> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InputChip(
        avatar: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://tinyurl.com/5n88rk79',
          ),
        ),
        label: const Text('Einstein'),
        onSelected: (bool newBool) {
          setState(() {
            isSelected = !isSelected;
          });
        },
        selected: isSelected,
        selectedColor: Colors.white38,
        deleteIcon: const Icon(Icons.cancel_outlined),
        onDeleted: () {},
      ),
    );
  }
}
