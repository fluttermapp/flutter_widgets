//! ColoredBox
import 'package:flutter/material.dart';

class Widget044 extends StatelessWidget {
  const Widget044({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColoredBox(
        color: Colors.orangeAccent,
        child: SizedBox(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
