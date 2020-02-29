import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = "You are awesome and Innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable";
    } else if (resultScore <= 16) {
      resultText = "You are Strange";
    } else {
      resultText = "You are so bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuizHandler,
            child: Text("Restart Quiz!"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
