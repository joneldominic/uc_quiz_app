import 'package:flutter/material.dart';

import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = [
    {
      "questionText": "What's your favorite color?",
      "answerTexts": ["Black", "Red", "Green", "Blue"],
    },
    {
      "questionText": "What's your favorite animal?",
      "answerTexts": ["Dog", "Cat", "Lion"],
    },
    {
      "questionText": "What's your favorite sports?",
      "answerTexts": ["Badmint", "Basketball", "Boxing", "Swimming"],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // Inform the class that something has changed...
      _questionIndex < 2 ? _questionIndex++ : _questionIndex = 0;
    });
    print("Answer choosen!, question index = $_questionIndex");
    print(_questions[_questionIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Personality Quiz App"),
      ),
      body: Column(
        children: [
          Question(
            _questions[_questionIndex]["questionText"],
          ),
          ...(_questions[_questionIndex]["answerTexts"] as List<String>)
              .map((answer) {
            return Answer(
              answerText: answer,
              selectHandler: _answerQuestion,
            );
          }).toList(),
        ],
      ),
    ));
  }
}
