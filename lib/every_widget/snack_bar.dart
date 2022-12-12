//! SnackBar

import 'package:flutter/material.dart';

class Widget190 extends StatelessWidget {
  const Widget190({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Flutter Mapp'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {},
              ),
            ),
          );
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
