import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
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
            Text('The question'),
            RaisedButton(
              onPressed: () {
                print('Answer 1 chosen');
              },
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: () {
                print('Answer 2 chosen');
              },
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: () {
                print('Answer 3 chosen');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
