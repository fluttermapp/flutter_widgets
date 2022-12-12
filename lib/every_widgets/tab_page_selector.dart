//! TabPageSelector

import 'package:flutter/material.dart';

List<Widget> widgets = const [
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];

class Widget198 extends StatefulWidget {
  const Widget198({Key? key}) : super(key: key);

  @override
  State<Widget198> createState() => _Widget198State();
}

class _Widget198State extends State<Widget198>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: widgets.length,
      initialIndex: _index,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TabBarView(
            controller: controller,
            children: widgets,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
              setState(() {});
            },
            child: const Icon(Icons.navigate_next),
            hoverElevation: 0,
            elevation: 0,
          )
        ],
      ),
    );
  }
}
