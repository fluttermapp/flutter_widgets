//!DecoratedBox

import 'package:flutter/material.dart';

class Widget080 extends StatelessWidget {
  const Widget080({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[
              Colors.deepOrange,
              Colors.red,
            ],
          ),
        ),
      ),
    );
  }
}
