//! ShaderMask

import 'package:flutter/material.dart';

class Widget174 extends StatelessWidget {
  const Widget174({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const RadialGradient(
              center: Alignment.topRight,
              radius: 4.0,
              colors: [
                Colors.orangeAccent,
                Colors.redAccent,
              ],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: const Text(
            'This is a cool looking text',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
