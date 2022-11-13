//!PageView

import 'package:flutter/material.dart';

class Widget149 extends StatefulWidget {
  const Widget149({Key? key}) : super(key: key);

  @override
  State<Widget149> createState() => _Widget149State();
}

class _Widget149State extends State<Widget149> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.orangeAccent,
          child: const Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        Container(
          color: Colors.redAccent,
          child: const Center(
            child: Text(
              "2",
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        Container(
          color: Colors.blueGrey,
          child: const Center(
            child: Text(
              "3",
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
      ],
    );
  }
}
