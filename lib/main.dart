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
          centerTitle: true,
          title: Text('Demo App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: Text('Good Evening'),
        ),
      ),
    );
  }
}
