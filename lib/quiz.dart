import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<dynamic> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answers) {
          return Answer(answerQuestion, answers);
        }).toList()
      ],
    );
  }
}
