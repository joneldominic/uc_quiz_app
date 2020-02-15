import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer choosen!");
  }

 void answerQuestionWithParam(int num) {
    print("Answer choosen, $num");
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Personality Quiz"),
      ),
      body: Column(
        children: [
          Text("Hello World"),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () => answerQuestionWithParam(2),
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: (){
              print("Answer choosen, 3");
            },
          ),
        ],
      ),
    ));
  }
}
