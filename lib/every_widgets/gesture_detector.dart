//! GestureDetector
import 'package:flutter/material.dart';

class Widget111 extends StatefulWidget {
  const Widget111({Key? key}) : super(key: key);

  @override
  State<Widget111> createState() => _Widget111State();
}

class _Widget111State extends State<Widget111> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _counter += 1;
          });
        },
        child: Container(
          height: 200,
          width: 200,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(
              _counter.toString(),
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
