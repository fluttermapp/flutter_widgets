//!FittedBox

import 'package:flutter/material.dart';

class Widget102 extends StatelessWidget {
  const Widget102({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        color: Colors.orangeAccent,
        child: const FittedBox(
          child: Text(
            'This is a pretty long text',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
