import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  
  var _questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your name?"
  ];

  var _questionIndex = 0;

  void answerQuestion() {
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
        title: Text("Personality Quiz"),
      ),
      body: Column(
        children: [
          Text(_questions[_questionIndex]),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: answerQuestion,
          ),
        ],
      ),
    ));
  }
}
