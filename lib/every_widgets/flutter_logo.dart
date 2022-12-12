//!FlutterLogo

import 'package:flutter/material.dart';

class Widget106 extends StatelessWidget {
  const Widget106({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FlutterLogo(
        size: 300,
        style: FlutterLogoStyle.stacked,
        textColor: Colors.blue,
      ),
    );
  }
}
