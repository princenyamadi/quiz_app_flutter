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
  static const questions = [
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

    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answer'] as List<String>).map(
                    (answer) {
                      return Answer(
                        selectHandler: _answerQuestion,
                        answerText: answer,
                      );
                    },
                  ).toList(),
                ],
              )
            : Center(
                child: Text('Finished'),
              ),
      ),
    );
  }
}
