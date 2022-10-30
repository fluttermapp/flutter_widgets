import 'package:flutter/material.dart';

//! Center

class Widget029 extends StatefulWidget {
  const Widget029({Key? key}) : super(key: key);

  @override
  State<Widget029> createState() => _Widget029State();
}

class _Widget029State extends State<Widget029> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
          child: const Text('Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      );
  }
}
