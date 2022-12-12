//! SliverFixedExtentList
//?DONE

import 'package:flutter/material.dart';

class Widget184 extends StatelessWidget {
  const Widget184({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: index.isEven ? Colors.white12 : Colors.white38,
                child: Text('Item ${index + 1}'),
              );
            },
          ),
        )
      ],
    );
  }
}
