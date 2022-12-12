//!FractionallySizedBox

import 'package:flutter/material.dart';

class Widget109 extends StatelessWidget {
  const Widget109({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: Container(
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
