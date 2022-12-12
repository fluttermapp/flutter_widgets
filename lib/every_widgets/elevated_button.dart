//!ElevatedButton

import 'package:flutter/material.dart';

class Widget091 extends StatefulWidget {
  const Widget091({Key? key}) : super(key: key);

  @override
  State<Widget091> createState() => _Widget091State();
}

class _Widget091State extends State<Widget091> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ElevatedButton(
            onPressed: null,
            child: Text('Disabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Enabled'),
            icon: const Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
