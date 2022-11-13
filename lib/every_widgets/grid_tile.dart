//!GridTile

import 'package:flutter/material.dart';

class Widget113 extends StatelessWidget {
  const Widget113({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        width: 300,
        child: GridTile(
          header: Container(
            height: 40,
            child: const Center(
              child: Text('Header'),
            ),
            color: Colors.black38,
          ),
          child: Image.network(
            'https://tinyurl.com/yc4pctt5',
            fit: BoxFit.cover,
          ),
          footer: Container(
            height: 40,
            child: const Center(
              child: Text('Footer'),
            ),
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}
