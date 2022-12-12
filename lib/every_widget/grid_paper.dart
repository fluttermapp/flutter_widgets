//! GridPaper
import 'package:flutter/material.dart';

class Widget112 extends StatelessWidget {
  const Widget112({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: GridPaper(
        color: Colors.pink,
        divisions: 1,
        interval: 210,
        subdivisions: 6,
      ),
    );
  }
}
