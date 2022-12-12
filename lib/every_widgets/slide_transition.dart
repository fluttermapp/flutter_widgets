//!SlideTransition

import 'package:flutter/material.dart';

class Widget181 extends StatefulWidget {
  const Widget181({Key? key}) : super(key: key);

  @override
  State<Widget181> createState() => _Widget181State();
}

class _Widget181State extends State<Widget181>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 1.5),
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideTransition(
        position: _offsetAnimation,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(size: 150.0),
        ),
      ),
    );
  }
}
