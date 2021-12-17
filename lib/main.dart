import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  int count = 0;

  void counts() {
    setState(() {
      count += 1;
    });
  }

  void ok() {
    setState(() {
      count = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('POP MARIO and LUIGI'),
          backgroundColor: Colors.orange.shade100,
        ),
        body: Column(children: [
          const Text('counts'),
          Text('$count'),
          ElevatedButton(
            onPressed: ok,
            child: const Text('Reset')),
          ElevatedButton(
            onPressed: counts,
            child: const Image(image: AssetImage('image/download (2).jpg'))),
        ]),
      ),
    );
  }
}
