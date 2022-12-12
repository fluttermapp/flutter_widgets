//! SwitchListTile

import 'package:flutter/material.dart';

class Widget196 extends StatefulWidget {
  const Widget196({Key? key}) : super(key: key);

  @override
  State<Widget196> createState() => _Widget196State();
}

class _Widget196State extends State<Widget196> {
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: const Text('Lights'),
        value: lights,
        onChanged: (bool value) {
          setState(() {
            lights = value;
          });
        },
        secondary: const Icon(Icons.lightbulb_outline),
      ),
    );
  }
}
