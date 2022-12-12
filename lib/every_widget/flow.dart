//!flow

import 'package:flutter/material.dart';

class Widget105 extends StatefulWidget {
  const Widget105({Key? key}) : super(key: key);

  @override
  State<Widget105> createState() => _Widget105State();
}

class _Widget105State extends State<Widget105>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastIconClicked = Icons.notifications;

  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
      children: menuItems
          .map<Widget>(
            (IconData icon) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: FloatingActionButton(
                backgroundColor:
                    lastIconClicked == icon ? Colors.orangeAccent : Colors.grey,
                splashColor: Colors.orangeAccent,
                onPressed: () {
                  if (icon != Icons.menu) {
                    setState(() => lastIconClicked = icon);
                  }
                  menuAnimation.status == AnimationStatus.completed
                      ? menuAnimation.reverse()
                      : menuAnimation.forward();
                },
                child: Icon(icon),
              ),
            ),
          )
          .toList(),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0),
      );
    }
  }
}
