//!CupertinoActionSheetAction

import 'package:flutter/cupertino.dart';

class Widget051 extends StatefulWidget {
  const Widget051({Key? key}) : super(key: key);

  @override
  State<Widget051> createState() => _Widget051State();
}

class _Widget051State extends State<Widget051> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('CupertinoActionSheet'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('Flutter Mapp'),
                message: const Text('Your Message'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Do something'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text('Do something else'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
