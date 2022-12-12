//! RangeSlider

import 'package:flutter/material.dart';

class Widget160 extends StatefulWidget {
  const Widget160({Key? key}) : super(key: key);

  @override
  State<Widget160> createState() => _Widget160State();
}

class _Widget160State extends State<Widget160> {
  RangeValues values = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Center(
      child: RangeSlider(
        values: values,
        divisions: 10,
        labels: labels,
        onChanged: (newValues) {
          setState(() {
            values = newValues;
          });
        },
      ),
    );
  }
}
