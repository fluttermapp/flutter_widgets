//!CupertinoScrollbar
import 'package:flutter/cupertino.dart';

class Widget061 extends StatelessWidget {
  const Widget061({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      thickness: 6.0,
      thicknessWhileDragging: 10.0,
      radius: const Radius.circular(34.0),
      radiusWhileDragging: Radius.zero,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              '$index',
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
