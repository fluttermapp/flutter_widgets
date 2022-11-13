//! TextField

import 'package:flutter/material.dart';

class Widget202 extends StatefulWidget {
  const Widget202({Key? key}) : super(key: key);

  @override
  State<Widget202> createState() => _Widget202State();
}

class _Widget202State extends State<Widget202> {
  late TextEditingController controller;
  String text = '';

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: controller,
              onSubmitted: (String value) {
                setState(() {
                  text = controller.text;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(text),
          ],
        ),
      ),
    );
  }
}
