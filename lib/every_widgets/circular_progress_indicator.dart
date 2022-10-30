//! CircularProgressIndicator
import 'package:flutter/material.dart';

class Widget038 extends StatelessWidget {
  const Widget038({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.orangeAccent,
        backgroundColor: Colors.blueGrey,
        value: 0.50,
      ),
    );
  }
}
