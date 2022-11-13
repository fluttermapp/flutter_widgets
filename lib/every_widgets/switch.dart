//! Switch

import 'package:flutter/material.dart';

class Widget195 extends StatefulWidget {
  const Widget195({Key? key}) : super(key: key);

  @override
  State<Widget195> createState() => _Widget195State();
}

class _Widget195State extends State<Widget195> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}
