import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    if (kDebugMode) {
      return ErrorWidget(details.exception);
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error!\n${details.exception}',
        style: const TextStyle(color: Colors.yellow),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static const String _title = 'ErrorWidget Sample';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool throwError = false;

  @override
  Widget build(BuildContext context) {
    if (throwError) {
      return Builder(
        builder: (BuildContext context) {
          throw Exception('oh no, an error');
        },
      );
    } else {
      return MaterialApp(
        title: MyApp._title,
        home: Scaffold(
          appBar: AppBar(title: const Text(MyApp._title)),
          body: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    throwError = true;
                  });
                },
                child: const Text('Error Prone')),
          ),
        ),
      );
    }
  }
}
