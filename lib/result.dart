import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 8) {
      resultText = "Pretty Likable";
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'YOU ARE SO BAD';
    }
    return resultText;
  }

  Result(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
