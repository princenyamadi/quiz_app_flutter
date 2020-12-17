import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer.dart';
import 'package:quiz_app_flutter/question.dart';
import 'package:quiz_app_flutter/quiz.dart';
import 'package:quiz_app_flutter/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    //final can also be used
    {
      'questionText': 'What\'s your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor',
      'answer': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }

    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
