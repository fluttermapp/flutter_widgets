//! NotificationListener
import 'package:flutter/material.dart';

class Widget141 extends StatefulWidget {
  const Widget141({Key? key}) : super(key: key);

  @override
  Widget141State createState() => Widget141State();
}

class Widget141State extends State<Widget141> {
  String message = 'New';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(message),
          ),
        ),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollStartNotification) {
                setState(() {
                  message = "Scroll Started";
                });
              } else if (scrollNotification is ScrollUpdateNotification) {
                setState(() {
                  message = "Scroll Updated";
                });
              } else if (scrollNotification is ScrollEndNotification) {
                setState(() {
                  message = "Scroll Ended";
                });
              }
              return true;
            },
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item: $index"),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
