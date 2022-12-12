import 'package:flutter/material.dart';

//!AnimatedPadding

class Widget015 extends StatefulWidget {
  const Widget015({Key? key}) : super(key: key);

  @override
  State<Widget015> createState() => _Widget015State();
}

class _Widget015State extends State<Widget015> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.orangeAccent,
          ),
          child: const Text('Change padding'),
          onPressed: () {
            setState(() {
              padValue = padValue == 0.0 ? 100.0 : 0.0;
            });
          },
        ),
        Text('Padding = $padValue'),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.orangeAccent,
          ),
        ),
      ],
    );
  }
}
