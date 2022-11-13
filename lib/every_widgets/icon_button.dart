//!IconButton

import 'package:flutter/material.dart';

class Widget118 extends StatefulWidget {
  const Widget118({Key? key}) : super(key: key);

  @override
  State<Widget118> createState() => _Widget118State();
}

class _Widget118State extends State<Widget118> {
  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box),
            iconSize: 50,
            onPressed: () {
              setState(() {
                click += 1;
              });
            },
            //with many other arguments
          ),
          Text(
            'Click $click',
            style: const TextStyle(
              fontSize: 40,
            ),
          )
        ],
      ),
    );
  }
}
