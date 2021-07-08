import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  var questionIndex = 0;
  var questions = [
    'What is your favorite animal?',
    'What is your favorite color?'
  ];

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text("My first App"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            children: [
              Text(questions[0]),
              RaisedButton(child: Text('answer 1'), onPressed: answerQuestion),
              RaisedButton(
                child: Text('answer 2'),
                onPressed: () => print('Answer 2 chosen'),
              ),
              RaisedButton(
                  child: Text('answer 3'),
                  onPressed: () => {
                        //..
                        print('Answer 3 chosen'),
                      }),
              Text(questions[1]),
              RaisedButton(child: Text('answer 1'), onPressed: answerQuestion),
              RaisedButton(
                child: Text('answer 2'),
                onPressed: () => print('Answer 2 chosen'),
              ),
              RaisedButton(
                  child: Text('answer 3'),
                  onPressed: () => {
                        //..
                        print('Answer 3 chosen'),
                      })
            ],
          ),
        ),
      ),
    );
  }
}
