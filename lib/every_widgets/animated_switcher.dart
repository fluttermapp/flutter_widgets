//! AnimatedSwitcher

import 'package:flutter/material.dart';

class Widget020 extends StatefulWidget {
  const Widget020({Key? key}) : super(key: key);

  @override
  State<Widget020> createState() => _Widget020State();
}

class _Widget020State extends State<Widget020> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Text(
              '$_count',
              style: const TextStyle(fontSize: 40),
              key: ValueKey(_count),
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
          ),
          ElevatedButton(
            child: const Text('Add'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
