//!CupertinoSwitch

import 'package:flutter/material.dart';

class Widget066 extends StatefulWidget {
  const Widget066({Key? key}) : super(key: key);

  @override
  State<Widget066> createState() => _Widget078State();
}

class _Widget078State extends State<Widget066> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch.adaptive(
        value: _lights,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
        },
      ),
    );
  }
}
