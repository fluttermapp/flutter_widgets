import 'dart:async';

import 'package:flutter/material.dart';

//! AnimatedModalBarrier

class Widget013 extends StatefulWidget {
  const Widget013({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Widget013State();
}

class _Widget013State extends State<Widget013>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              width: 250.0,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                    child: const Text('Press'),
                    onPressed: () {
                      setState(() {
                        _isPressed = true;
                      });
                      _animationController.reset();
                      _animationController.forward();
                      Future.delayed(const Duration(seconds: 3), () {
                        setState(() {
                          _isPressed = false;
                        });
                      });
                    },
                  ),
                  if (_isPressed) _animatedModalBarrier,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
