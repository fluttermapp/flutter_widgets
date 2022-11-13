//! Scrollbar

import 'package:flutter/material.dart';

class Widget171 extends StatefulWidget {
  const Widget171({Key? key}) : super(key: key);

  @override
  State<Widget171> createState() => _Widget171State();
}

class _Widget171State extends State<Widget171> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      child: ListView.builder(
        controller: controller,
        itemCount: 40,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${index + 1}'),
          );
        },
      ),
    );
  }
}
