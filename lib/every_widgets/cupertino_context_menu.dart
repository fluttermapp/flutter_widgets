//!CupertinoContextMenu

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget055 extends StatelessWidget {
  const Widget055({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/800px-YouTube_full-color_icon_%282017%29.svg.png',
            ),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
