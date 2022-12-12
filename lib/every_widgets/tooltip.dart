//!Tooltip
import 'package:flutter/material.dart';

class Widget207 extends StatelessWidget {
  const Widget207({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Tooltip(
        message: 'This is an image',
        child: Image.asset('assets/icon/ocean.jpg'),
      ),
    );
  }
}
