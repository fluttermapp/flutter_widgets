//!FadeInImage

import 'package:flutter/material.dart';

class Widget099 extends StatelessWidget {
  const Widget099({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/icon/ocean.jpg',
        image: 'https://tinyurl.com/p4475pwh',
      ),
    );
  }
}
