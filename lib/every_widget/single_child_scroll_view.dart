//! SingleChildScrollView

import 'package:flutter/material.dart';

class Widget177 extends StatelessWidget {
  const Widget177({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          50,
          (index) => ListTile(
            title: Text('Item ${index + 1}'),
          ),
        ),
      ),
    );
  }
}
