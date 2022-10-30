//! Time Picker &&& Date picker(91)
import 'package:flutter/material.dart';

class Widget078 extends StatefulWidget {
  const Widget078({Key? key}) : super(key: key);

  @override
  _Widget078State createState() {
    return _Widget078State();
  }
}

class _Widget078State extends State<Widget078> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}",
          ),
          ElevatedButton(
            child: const Text("Choose Date"),
            onPressed: () async {
              final DateTime? dateTime = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
              );
              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
