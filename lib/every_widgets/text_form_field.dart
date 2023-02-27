//! TextFormField

import 'package:flutter/material.dart';

class Widget203 extends StatefulWidget {
  const Widget203({Key? key}) : super(key: key);

  @override
  State<Widget203> createState() => _Widget203State();
}

class _Widget203State extends State<Widget203> {
  List<String> titles = [
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          setState(() {
            Form.of(primaryFocus!.context!).save();
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            3,
            (int index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      onSaved: (String? value) {
                        if (value != null) {
                          titles[index] = value;
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(titles[index]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
