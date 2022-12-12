import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//!CupertinoPageRoute

class Widget057 extends StatelessWidget {
  const Widget057({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
        child: const Text('Click for page 2'),
        onPressed: () => Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (BuildContext context) {
              return const PageTwo();
            },
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Page Two'),
      ),
    );
  }
}
