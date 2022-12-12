//!CupertinoPageScaffold done in 59 also

import 'package:flutter/cupertino.dart';

class Widget058 extends StatelessWidget {
  const Widget058({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 18, 32, 47),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
        middle: const Text('Flutter Mapp'),
      ),
      child: Stack(
        children: <Widget>[
          Image.network(
            'https://i.pinimg.com/originals/c0/40/7f/c0407fadd8f5db63c3d8e35295fa7941.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}
