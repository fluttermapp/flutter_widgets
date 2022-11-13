//!DropdownButton

import 'package:flutter/material.dart';

class Widget090 extends StatefulWidget {
  const Widget090({Key? key}) : super(key: key);

  @override
  State<Widget090> createState() => _Widget090State();
}

class _Widget090State extends State<Widget090> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.menu),
        style: const TextStyle(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.white,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: const [
          DropdownMenuItem<String>(
            value: 'One',
            child: Text('One'),
          ),
          DropdownMenuItem<String>(
            value: 'Two',
            child: Text('Two'),
          ),
          DropdownMenuItem<String>(
            value: 'Three',
            child: Text('Three'),
          ),
        ],
      ),
    );
  }
}
