//!CheckboxListTile

import 'package:flutter/material.dart';

class Widget034 extends StatefulWidget {
  const Widget034({Key? key}) : super(key: key);

  @override
  State<Widget034> createState() => _Widget034State();
}

class _Widget034State extends State<Widget034> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: const Text('Checkbox List Tile'),
        value: _isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            _isChecked = newValue;
          });
        },
        activeColor: Colors.orangeAccent,
        checkColor: Colors.white,
        tileColor: Colors.black12,
        subtitle: const Text('This is a subtitle'),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
      ),
    );
  }
}
