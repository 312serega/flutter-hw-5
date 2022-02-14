import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var rand = 0;
  var bg = Colors.green;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            color: bg,
            padding: EdgeInsets.all(15),
            child: Text(
              'рандомное число: ${rand.toString()}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              rand = Random().nextInt(100);
              if (bg == Colors.green) {
                bg = Colors.blue;
              } else {
                bg = Colors.green;
              }
            });
          },
          child: const Icon(Icons.replay_outlined),
        ),
      ),
    );
  }
}
