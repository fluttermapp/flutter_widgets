//!LinearProgressIndicator

import 'package:flutter/material.dart';

class Widget127 extends StatefulWidget {
  const Widget127({Key? key}) : super(key: key);

  @override
  State<Widget127> createState() => _Widget127State();
}

class _Widget127State extends State<Widget127> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            LinearProgressIndicator(
              value: controller.value,
            ),
            const LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
