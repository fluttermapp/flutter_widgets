//! Future builder
import 'package:flutter/material.dart';

class Widget110 extends StatefulWidget {
  const Widget110({Key? key}) : super(key: key);

  @override
  State<Widget110> createState() => _Widget110State();
}

class _Widget110State extends State<Widget110> {
  Future<String> getData() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    //throw 'Error';
    return 'Super!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Text(
              snapshot.error.toString(),
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  snapshot.data.toString(),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Refresh'),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
