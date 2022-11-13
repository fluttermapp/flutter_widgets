//! InkWell

import 'package:flutter/material.dart';

class Widget122 extends StatefulWidget {
  const Widget122({Key? key}) : super(key: key);

  @override
  State<Widget122> createState() => _Widget122State();
}

class _Widget122State extends State<Widget122> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            color = Colors.red;
          });
        },
        //onDoubleTap: () {},
        //onLongPress: () {},
        child: Ink(
          height: 300,
          width: 300,
          color: color,
          child: const Center(
            child: Text('Click'),
          ),
        ),
      ),
    );
  }
}
