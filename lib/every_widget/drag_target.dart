//!DragTarget

import 'package:flutter/material.dart';

class Widget086 extends StatefulWidget {
  const Widget086({Key? key}) : super(key: key);

  @override
  Widget086State createState() => Widget086State();
}

class Widget086State extends State<Widget086> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Draggable(
            data: Colors.orangeAccent,
            onDraggableCanceled: (velocity, offset) {},
            feedback: Container(
              width: 150.0,
              height: 150.0,
              color: Colors.orangeAccent.withOpacity(0.5),
              child: const Center(
                child: Text(
                  'Box...',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.orangeAccent,
              child: const Center(
                child: Text(
                  'Box',
                ),
              ),
            ),
          ),
          DragTarget(
            onAccept: (Color color) {
              caughtColor = color;
            },
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                width: 200.0,
                height: 200.0,
                color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                child: const Center(
                  child: Text("Drag here"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
