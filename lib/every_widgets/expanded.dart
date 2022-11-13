//!Expanded

import 'package:flutter/material.dart';

class Widget094 extends StatefulWidget {
  const Widget094({Key? key}) : super(key: key);

  @override
  State<Widget094> createState() => _Widget094State();
}

class _Widget094State extends State<Widget094> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            height: 200,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.orange,
            height: 200,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
            height: 200,
          ),
        ),
      ],
    );
  }
}
