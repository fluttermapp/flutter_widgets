//! OverflowBox

import 'package:flutter/material.dart';

class Widget147 extends StatelessWidget {
  const Widget147({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orangeAccent,
        child: OverflowBox(
          maxWidth: 200,
          maxHeight: 200,
          child: Container(
            color: Colors.red.withOpacity(0.5),
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
