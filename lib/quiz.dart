import 'package:flutter/material.dart';

import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex; 
  final Function answerQuestion;

  Quiz({@required this.questions, @required this.questionIndex, @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]["answerTexts"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answerText: answer["text"],
            selectHandler: () => answerQuestion(answer["score"]),
          );
        }).toList(),
      ],
    );
  }
}
