//!ModalBarrier

import 'package:flutter/material.dart';

class Widget137 extends StatefulWidget {
  const Widget137({Key? key}) : super(key: key);

  @override
  State<Widget137> createState() => _Widget137State();
}

class _Widget137State extends State<Widget137> {
  bool activated = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                activated = !activated;
              });
            },
            child: const Text('Reactivate'),
          ),
        ),
        if (activated)
          Opacity(
            opacity: 0.4,
            child: ModalBarrier(
              dismissible: false,
              onDismiss: () {
                setState(() {
                  activated = !activated;
                });
              },
              color: Colors.orangeAccent,
            ),
          ),
      ],
    );
  }
}
