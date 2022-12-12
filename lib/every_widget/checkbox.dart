//! Checkbox
import 'package:flutter/material.dart';

class Widget033 extends StatefulWidget {
  const Widget033({Key? key}) : super(key: key);

  @override
  State<Widget033> createState() => _Widget033State();
}

class _Widget033State extends State<Widget033> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        value: isChecked,
        activeColor: Colors.orangeAccent,
        tristate: true,
        onChanged: (newBool) {
          setState(() {
            isChecked = newBool;
          });
        },
      ),
    );
  }
}
