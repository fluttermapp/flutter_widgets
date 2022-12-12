//! ConstrainedBox
import 'package:flutter/material.dart';

class Widget046 extends StatelessWidget {
  const Widget046({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 900,
          maxHeight: 350,
          
        ),
        child: Container(
          color: Colors.orangeAccent,
          width: double.infinity,
        ),
      ),
    );
  }
}
