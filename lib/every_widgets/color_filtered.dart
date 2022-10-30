//! ColorFiltered
import 'package:flutter/material.dart';

class Widget045 extends StatelessWidget {
  const Widget045({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(
        Colors.white,
        BlendMode.color,
      ),
      child: Image.asset('assets/icon/blue.jpg'),
    );
  }
}
