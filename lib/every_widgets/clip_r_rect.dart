//! ClipRRect
import 'package:flutter/material.dart';

class Widget042 extends StatefulWidget {
  const Widget042({Key? key}) : super(key: key);

  @override
  State<Widget042> createState() => _Widget042State();
}

class _Widget042State extends State<Widget042> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/icon/ocean.jpg',
          width: 350,
        ),
      ),
    );
  }
}
