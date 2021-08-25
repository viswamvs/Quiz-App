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
      'questionText':
          'Which planet in our solar system is known as the Red Planet?',
      'answers': ['Earth', 'Mars', 'Mercury', 'Saturn']
    },
    {
      'questionText': 'Which country has the most islands in the world?',
      'answers': ['Bali', 'Maui', 'Vatican', 'Sweden'],
    },
    {
      'questionText': 'What\'s the national flower of India?',
      'answers': ['Lotus', 'Sunflower', 'Crossandra', 'Rose'],
    },
    {
      'questionText':
          'In the context to India’s wild life, the flying fox is a?',
      'answers': ['Bat', 'Vulture', 'Stork', 'Kite'],
    },
    {
      'questionText': 'World Wildlife Day is celebrated at?',
      'answers': ['25th January', '2nd February', '27th February', '2nd March'],
    }
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
