//! PositionedTransition

import 'package:flutter/material.dart';

class Widget156 extends StatefulWidget {
  const Widget156({Key? key}) : super(key: key);

  @override
  State<Widget156> createState() => _Widget156State();
}

class _Widget156State extends State<Widget156>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;
        return Stack(
          children: <Widget>[
            PositionedTransition(
              rect: RelativeRectTween(
                begin: RelativeRect.fromSize(
                    Rect.fromLTWH(
                      biggest.width / 2 - smallLogo / 2,
                      0,
                      smallLogo,
                      smallLogo,
                    ),
                    biggest),
                end: RelativeRect.fromSize(
                    Rect.fromLTWH(
                      biggest.width / 2 - bigLogo / 2,
                      biggest.height - bigLogo,
                      bigLogo,
                      bigLogo,
                    ),
                    biggest),
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.slowMiddle,
              )),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
