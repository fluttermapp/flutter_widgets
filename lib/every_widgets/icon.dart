//! Icon

import 'package:flutter/material.dart';

class Widget117 extends StatelessWidget {
  const Widget117({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.flutter_dash,
        color: Colors.orangeAccent,
        size: 200,
        shadows: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(8, 8),
            spreadRadius: 10,
            blurRadius: 10,
          ),
        ],
      ),
    );
  }
}
