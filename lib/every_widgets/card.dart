//! Card

import 'package:flutter/material.dart';

class Widget031 extends StatelessWidget {
  const Widget031({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 20,
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 8),
              const Text('This is a Flutter card'),
              TextButton(
                child: const Text('Press'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
