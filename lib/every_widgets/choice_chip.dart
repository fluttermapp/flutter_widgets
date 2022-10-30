//! ChoiceChip
import 'package:flutter/material.dart';

class Widget036 extends StatefulWidget {
  const Widget036({Key? key}) : super(key: key);

  @override
  State<Widget036> createState() => _Widget036State();
}

class _Widget036State extends State<Widget036> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceChip(
        label: const Text("Choice Chip"),
        selected: isSelected,
        selectedColor: Colors.orangeAccent,
        onSelected: (newState) {
          setState(() {
            isSelected = newState;
          });
        },
      ),
    );
  }
}
