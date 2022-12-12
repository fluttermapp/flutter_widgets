//!Selectable Text

import 'package:flutter/material.dart';

class Widget172 extends StatefulWidget {
  const Widget172({Key? key}) : super(key: key);

  @override
  State<Widget172> createState() => _Widget172State();
}

class _Widget172State extends State<Widget172> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableText(
        'This is selectable',
        style: const TextStyle(fontSize: 30),
        onSelectionChanged: (selection, cause) {},
      ),
    );
  }
}
