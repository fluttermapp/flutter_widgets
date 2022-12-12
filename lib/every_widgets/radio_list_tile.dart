//! RadioListTile

import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class Widget159 extends StatefulWidget {
  const Widget159({Key? key}) : super(key: key);

  @override
  State<Widget159> createState() => _Widget159State();
}

List<String> options = ['Option 1', 'Option 2'];

class _Widget159State extends State<Widget159> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: const Text('Option 1'),
          value: options[0],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text('Option 2'),
          value: options[1],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
            });
          },
        ),
      ],
    );
  }
}
