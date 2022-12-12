//! ExpandIcon

import 'package:flutter/material.dart';

class Widget095 extends StatefulWidget {
  const Widget095({Key? key}) : super(key: key);

  @override
  State<Widget095> createState() => _Widget095State();
}

class _Widget095State extends State<Widget095> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.orangeAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Title',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              ExpandIcon(
                isExpanded: _isExpanded,
                color: Colors.white,
                expandedColor: Colors.black,
                onPressed: (bool isExpanded) {
                  setState(() {
                    _isExpanded = !isExpanded;
                  });
                },
              ),
            ],
          ),
        ),
        if (_isExpanded)
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text('Flutter Mapp'),
          ),
      ],
    );
  }
}
