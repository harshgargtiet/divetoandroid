import 'package:flutter/material.dart';
import 'package:playground/quiz.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _indexx = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _indexx = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _indexx += 1;
    });

    //  print(_indexx);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'Whats your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 3},
          {'text': 'Red', 'score': 5},
          {'text': 'Yellow', 'score': 9},
          {'text': 'Purple', 'score': 4}
        ],
      },
      {
        'questionText': 'whats your favoirite Pet',
        'answers': [
          {'text': 'Cat', 'score': 3},
          {'text': 'Dog', 'score': 5},
          {'text': 'Birds', 'score': 9},
          {'text': 'Elephant', 'score': 4}
        ],
      },
      {
        'questionText': 'Whats your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 3},
          {'text': 'Red', 'score': 5},
          {'text': 'Violet', 'score': 9},
          {'text': 'Purple', 'score': 1}
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The questions'),
        ),
        body: _indexx < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerQuestions,
                indexx: _indexx,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
