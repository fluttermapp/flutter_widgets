//! stack

import 'package:flutter/material.dart';

class Widget192 extends StatelessWidget {
  const Widget192({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/icon/ocean.jpg',
            ),
          ),
          Center(
            child: Image.asset(
              'assets/icon/blue.jpg',
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
