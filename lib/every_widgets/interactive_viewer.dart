//! InteractiveViewer

import 'package:flutter/material.dart';

class Widget124 extends StatefulWidget {
  const Widget124({Key? key}) : super(key: key);

  @override
  State<Widget124> createState() => _Widget124State();
}

class _Widget124State extends State<Widget124> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(
          double.infinity,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Mapp',
            ),
          ),
        ),
      ),
    );
  }
}
