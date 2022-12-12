//! SliverPadding

import 'package:flutter/material.dart';

class Widget188 extends StatelessWidget {
  const Widget188({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(50.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Image.network('https://tinyurl.com/95ncjeuu'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
