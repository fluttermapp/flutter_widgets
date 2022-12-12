//! ClipOval
import 'package:flutter/material.dart';

class Widget039 extends StatelessWidget {
  const Widget039({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        clipper: CustomClip(),
        child: Container(
          width: 80,
          height: 80,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
