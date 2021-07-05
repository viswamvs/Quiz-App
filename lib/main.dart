import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.yellow,
    child: Center(
      child: Text(
        'Hello flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.lightGreen,
          fontWeight: FontWeight.bold,
          fontFamily: 'Times New Roman',
          fontSize: 26,
          fontStyle: FontStyle.italic,
        ),
      ),
    ),
  ));
}
