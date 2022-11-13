//!GridView

import 'package:flutter/material.dart';

class Widget115 extends StatelessWidget {
  const Widget115({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (_, index) => GridTile(
        header: const GridTileBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.person),
          title: Text('Flutter Mapp'),
          trailing: Icon(
            Icons.menu,
          ),
        ),
        child: Image.network(
          'https://tinyurl.com/yc4pctt5',
          fit: BoxFit.cover,
        ),
        footer: const GridTileBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.favorite),
        ),
      ),
      itemCount: 10,
    );
  }
}

//You can use this also*
// GridView(
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//   children: <Widget>[],
// )
