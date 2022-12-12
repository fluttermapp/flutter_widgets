//!CupertinoSlider

import 'package:flutter/cupertino.dart';

class Widget064 extends StatefulWidget {
  const Widget064({Key? key}) : super(key: key);

  @override
  Widget064State createState() => Widget064State();
}

class Widget064State extends State<Widget064> {
  double _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(_currentValue.toString()),
          const SizedBox(height: 50),
          CupertinoSlider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 10,
            onChanged: (selectedValue) {
              setState(() {
                _currentValue = selectedValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
