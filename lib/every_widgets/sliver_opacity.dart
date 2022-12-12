//! SliverOpacity
import 'package:flutter/material.dart';

class Widget187 extends StatefulWidget {
  const Widget187({Key? key}) : super(key: key);

  @override
  State<Widget187> createState() => _Widget187State();
}

class _Widget187State extends State<Widget187> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  visible = !visible;
                });
              },
              child: const Text('Click to hide/show'),
            ),
          ),
          SliverOpacity(
            opacity: visible ? 1.0 : 0.0,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('You can hide me'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
