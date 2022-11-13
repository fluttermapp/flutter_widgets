//! SizeTransition

import 'package:flutter/material.dart';

class Widget178 extends StatefulWidget {
  const Widget178({Key? key}) : super(key: key);

  @override
  State<Widget178> createState() => _Widget178State();
}

class _Widget178State extends State<Widget178> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInSine,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      axis: Axis.horizontal,
      axisAlignment: -1,
      child: const Center(
        child: FlutterLogo(size: 300.0),
      ),
    );
  }
}