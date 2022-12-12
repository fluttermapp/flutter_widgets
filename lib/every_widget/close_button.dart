//! CloseButton
import 'package:flutter/material.dart';

class Widget043 extends StatelessWidget {
  const Widget043({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CloseButton(
        color: Colors.red,
        onPressed: () {
          debugPrint("Do something");
        },
      ),
    );
  }
}
