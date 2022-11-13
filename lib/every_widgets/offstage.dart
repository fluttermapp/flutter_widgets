//! Offstage

import 'package:flutter/material.dart';

class Widget142 extends StatefulWidget {
  const Widget142({Key? key}) : super(key: key);

  @override
  State<Widget142> createState() => _Widget142State();
}

class _Widget142State extends State<Widget142> {
  bool isHided = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Offstage(
            offstage: isHided,
            child: const Icon(
              Icons.flutter_dash,
              size: 100,
            ),
          ),
          ElevatedButton(
            child: Text('isHided = $isHided'),
            onPressed: () {
              setState(() {
                isHided = !isHided;
              });
            },
          ),
        ],
      ),
    );
  }
}
