//!Semantics

import 'package:flutter/material.dart';

class Widget173 extends StatelessWidget {
  const Widget173({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Semantics(
            child: const FlutterLogo(
              size: 200,
            ),
            label: 'This is the Flutter Logo',
          ),
          const FlutterLogo(
            size: 200,
          ),
        ],
      ),
    );
  }
}
