//! RotationTransition

import 'package:flutter/material.dart';

class Widget167 extends StatefulWidget {
  const Widget167({Key? key}) : super(key: key);

  @override
  State<Widget167> createState() => _Widget167State();
}

class _Widget167State extends State<Widget167> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInCirc,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _animation,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(size: 150.0),
        ),
      ),
    );
  }
}
