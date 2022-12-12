//! Chip
import 'package:flutter/material.dart';

class Widget035 extends StatelessWidget {
  const Widget035({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: const Text("This is a Flutter chip"),
        onDeleted: () {
          debugPrint("Do something");
        },
      ),
    );
  }
}
