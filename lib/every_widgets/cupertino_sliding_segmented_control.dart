//!CupertinoSlidingSegmentedControl

import 'package:flutter/cupertino.dart';

class Widget065 extends StatefulWidget {
  const Widget065({Key? key}) : super(key: key);

  @override
  State<Widget065> createState() => _Widget065State();
}

class _Widget065State extends State<Widget065> {
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSlidingSegmentedControl(
        children: const {
          0: Text('Text 0'),
          1: Text('Text 1'),
          2: Text('Text 2'),
        },
        groupValue: _sliding,
        onValueChanged: (int? newValue) {
          setState(() {
            _sliding = newValue;
          });
        },
      ),
    );
  }
}
