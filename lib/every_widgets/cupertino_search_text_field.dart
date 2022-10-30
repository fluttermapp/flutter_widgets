//!CupertinoSearchTextField

import 'package:flutter/cupertino.dart';

class Widget062 extends StatelessWidget {
  Widget062({Key? key}) : super(key: key);
  final TextEditingController _textController =
      TextEditingController(text: 'Flutter Mapp');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemOrange,
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: CupertinoSearchTextField(
          controller: _textController,
        ),
      ),
    );
  }
}
