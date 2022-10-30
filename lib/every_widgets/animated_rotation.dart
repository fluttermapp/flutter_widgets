//! AnimatedRotation

import 'package:flutter/material.dart';

class Widget018 extends StatefulWidget {
  const Widget018({Key? key}) : super(key: key);

  @override
  State<Widget018> createState() => Widget018State();
}

class Widget018State extends State<Widget018> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Rotate Logo'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,
            ),
            onPressed: () {
              setState(() => turns += 1 / 4);
            },
          ),
        ],
      ),
    );
  }
}
