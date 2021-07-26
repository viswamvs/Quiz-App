import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  var questions = [
    'What\'s your favorite color',
    'What\'s your favorite animal'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Demo App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 Chosen'),
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () => {
                //
                print('Answer 3 Chosen')
              },
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 4 Chosen'),
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
