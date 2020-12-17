import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer.dart';
import 'package:quiz_app_flutter/question.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = <String>[
      'What\'s your favorite color?',
      'What\'s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
          ),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(
              selectHandler: _answerQuestion,
            ),
            Answer(
              selectHandler: _answerQuestion,
            ),
            Answer(
              selectHandler: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
