//!FractionalTranslation

import 'package:flutter/material.dart';

class Widget108 extends StatelessWidget {
  const Widget108({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.orangeAccent,
            height: 100,
            width: 100,
          ),
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.redAccent,
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
