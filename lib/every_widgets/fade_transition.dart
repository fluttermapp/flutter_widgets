//!FadeTransition

import 'package:flutter/material.dart';

class Widget100 extends StatefulWidget {
  const Widget100({Key? key}) : super(key: key);

  @override
  State<Widget100> createState() => _Widget100State();
}

class _Widget100State extends State<Widget100> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _animation,
        child: const FlutterLogo(size: 300),
      ),
    );
  }
}
