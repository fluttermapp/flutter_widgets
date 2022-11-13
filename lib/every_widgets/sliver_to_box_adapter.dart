//! SliverToBoxAdapter

import 'package:flutter/material.dart';

class Widget189 extends StatelessWidget {
  const Widget189({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
            child: Center(
              child: Text('Sliver To Box Adapter'),
            ),
          ),
        ),
      ],
    );
  }
}
