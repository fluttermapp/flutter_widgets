//! Slider

import 'package:flutter/material.dart';

class Widget182 extends StatefulWidget {
  const Widget182({Key? key}) : super(key: key);

  @override
  State<Widget182> createState() => _Widget182State();
}

class _Widget182State extends State<Widget182> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}
