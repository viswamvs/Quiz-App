import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  var questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Red', 'Blue', 'Green', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Tiger', 'Giraffee', 'Lion', 'Deer'],
    },
    {
      'questionText': 'Who\'s your favorite actor',
      'answers': ['Ajith', 'Vijay', 'Vikram', 'Dhanush'],
    },
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
            Question(questions[_questionIndex]["questionText"]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion)
          ],
        ),
      ),
    );
  }
}
