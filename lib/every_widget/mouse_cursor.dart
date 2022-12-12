//!MouseCursor

import 'package:flutter/material.dart';

//? Still 60 + 21 widgets to do = 91

class Widget138 extends StatelessWidget {
  const Widget138({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.grab,
        child: Container(
          width: 200,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}
