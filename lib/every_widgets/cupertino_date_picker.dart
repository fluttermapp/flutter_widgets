//!CupertinoDatePicker

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget056 extends StatefulWidget {
  const Widget056({Key? key}) : super(key: key);

  @override
  State<Widget056> createState() => _Widget056State();
}

class _Widget056State extends State<Widget056> {
  Duration duration = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text(
              '${duration.inHours}-${duration.inMinutes}-${duration.inSeconds}'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoTimerPicker(
                  backgroundColor: Colors.orangeAccent,
                  onTimerDurationChanged: (Duration newTime) {
                    setState(() => duration = newTime);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
