//! TweenAnimationBuilder

//? LEFT: 7!

import 'package:flutter/material.dart';

class Widget209 extends StatefulWidget {
  const Widget209({Key? key}) : super(key: key);

  @override
  State<Widget209> createState() => _Widget209State();
}

class _Widget209State extends State<Widget209> {
  double targetValue = 100;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: targetValue),
        duration: const Duration(milliseconds: 500),
        builder: (BuildContext context, double size, Widget? child) {
          return IconButton(
            iconSize: size,
            color: Colors.orangeAccent,
            icon: const Icon(Icons.flutter_dash),
            onPressed: () {
              setState(() {
                targetValue = targetValue == 100 ? 250 : 100;
              });
            },
          );
        },
      ),
    );
  }
}
