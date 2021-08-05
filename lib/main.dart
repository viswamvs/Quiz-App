import 'package:flutter/material.dart';
import 'package:helloworld/quiz.dart';

import './quiz.dart';
import './result.dart';

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
  final List _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 8},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 3},
      ],
    },
    {
      'questionText': 'Who\'s your favorite actor?',
      'answers': [
        {'text': 'Salmaan', 'score': 10},
        {'text': 'Aamir', 'score': 8},
        {'text': 'Milan', 'score': 5},
        {'text': 'Max', 'score': 3},
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Quiz App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result('No more questions'),
      ),
    );
  }
}
