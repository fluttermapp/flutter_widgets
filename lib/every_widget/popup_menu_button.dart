//!PopupMenuButton

import 'package:flutter/material.dart';

class Widget154 extends StatefulWidget {
  const Widget154({Key? key}) : super(key: key);

  @override
  State<Widget154> createState() => _Widget154State();
}

class _Widget154State extends State<Widget154> {
  String title = 'First item';
  String item1 = 'First item';
  String item2 = 'Second item';
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text(item1),
            value: item1,
          ),
          PopupMenuItem(
            child: Text(item2),
            value: item2,
          )
        ],
        onSelected: (String newValue) {
          setState(() {
            title = newValue;
          });
        },
      ),
    );
  }
}
