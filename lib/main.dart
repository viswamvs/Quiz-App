import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  var questions = [
    'What\'s your favorite color',
    'What\'s your favorite animal'
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Demo App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
          children: [
            Text('question 1'),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
          ],
        ),
      ),
    );
  }
}
