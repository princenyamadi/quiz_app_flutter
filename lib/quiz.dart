import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer.dart';
import 'package:quiz_app_flutter/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              selectHandler: () => answerQuestion(answer['score']),
              answerText: answer['text'],
            );
          },
        ).toList(),
      ],
    );
  }
}
