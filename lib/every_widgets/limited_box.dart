//!LimitedBox

import 'package:flutter/material.dart';

class Widget126 extends StatelessWidget {
  const Widget126({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: LimitedBox(
          maxHeight: 50,
          //maxWidth: 300,
          child: Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
              ),
              title: Text('Flutter Mapp'),
            ),
          ),
        ),
      ),
    );
  }
}
