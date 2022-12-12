//! Radio

import 'package:flutter/material.dart';

class Widget158 extends StatefulWidget {
  const Widget158({Key? key}) : super(key: key);

  @override
  State<Widget158> createState() => _Widget158State();
}

List<String> options = ['Option 1', 'Option 2'];

class _Widget158State extends State<Widget158> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Option 1'),
          leading: Radio(
            value: options[0],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Option 2'),
          leading: Radio(
            value: options[1],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            },
          ),
        ),
      ],
    );
  }
}
