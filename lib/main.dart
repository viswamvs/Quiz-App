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
  final List _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Black', 'Yellow', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Tiger', 'Lion', 'Bear', 'Giraffe'],
    },
    {
      'questionText': 'Who\'s your favorite actor?',
      'answers': ['Salmaan', 'Aamir', 'Milan', 'Max'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
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
              ? Column(
                  children: [
                    Question(
                      _questions[_questionIndex]["questionText"],
                    ),
                    ...(_questions[_questionIndex]['answers'] as List<String>)
                        .map((answers) {
                      return Answer(_answerQuestion, answers);
                    }).toList()
                  ],
                )
              : Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'You have no more questions ',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: _resetQuiz,
                        child: Text(
                          "Restart Quiz",
                          style: TextStyle(
                              fontSize: 24,
                              decorationStyle: TextDecorationStyle.solid),
                        ),
                      ),
                    ],
                  ),
                )),
    );
  }
}
