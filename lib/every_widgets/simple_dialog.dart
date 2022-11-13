//! SimpleDialog

import 'package:flutter/material.dart';

class Widget176 extends StatefulWidget {
  const Widget176({Key? key}) : super(key: key);

  @override
  State<Widget176> createState() => _MyHomePage14State();
}

class _MyHomePage14State extends State<Widget176> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              title: const Text('Flutter Mapp'),
              contentPadding: const EdgeInsets.all(20.0),
              children: [
                const Text('More information'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                )
              ],
            ),
          );
        },
        child: const Text('Show Dialog'),
      ),
    );
  }
}
