import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  List questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
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
          title: Text('Demo App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]["questionText"],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answers) {
                    return Answer(_answerQuestion, answers);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You have no more questions '),
              ),
      ),
    );
  }
}
