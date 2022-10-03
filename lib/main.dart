import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _indexx = 0;
  void _answerQuestions() {
    setState(() {
      _indexx += 1;
    });

    print(_indexx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favourite color?',
      'whats your favoirite animal',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The questions'),
        ),
        body: Column(
          children: [
            Question(questions[_indexx]),
            ElevatedButton(
              child: Text('Ans 1'),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text('Ans 2'),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text('Ans 3'),
              onPressed: _answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
