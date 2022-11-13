//! Padding

import 'package:flutter/material.dart';

class Widget148 extends StatelessWidget {
  const Widget148({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          // padding: EdgeInsets.zero,
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
          child: Text('Flutter Mapp'),
        ),
      ),
    );
  }
}
