import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int indexx;
  final Function answerQuestions;

  Quiz(
      {required this.questions,
      required this.answerQuestions,
      required this.indexx});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[indexx]['questionText'].toString(),
        ),
        ...(questions[indexx]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']),
              answer['text'].toString());
        }).toList()
      ],
    );
  }
}
