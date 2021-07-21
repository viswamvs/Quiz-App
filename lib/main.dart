import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Hello flutter'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: Text('Good Evening'),
        ),
      ),
    );
  }
}
