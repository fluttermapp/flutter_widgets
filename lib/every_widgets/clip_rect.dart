//! ClipRect
import 'package:flutter/material.dart';

class Widget041 extends StatelessWidget {
  const Widget041({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        clipper: MyClipper(),
        child: Container(
          width: 3000,
          height: 3000,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 0, 80, 80);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
