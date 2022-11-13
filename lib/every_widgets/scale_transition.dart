//! ScaleTransition

import 'package:flutter/material.dart';

class Widget170 extends StatefulWidget {
  const Widget170({Key? key}) : super(key: key);

  @override
  State<Widget170> createState() => _Widget170State();
}

class _Widget170State extends State<Widget170> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: const FlutterLogo(size: 150.0),
      ),
    );
  }
}
