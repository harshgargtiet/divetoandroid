import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

    //  print(_indexx);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'Whats your favourite color?',
        'answers': ['Black', 'Red', 'Yellow', 'Purple'],
      },
      {
        'questionText': 'whats your favoirite Pet',
        'answers': ['Cat', 'Dog', 'Birds', 'Elephant'],
      },
      {
        'questionText': 'Whats your favourite color?',
        'answers': ['Black', 'Red', 'violet', 'Purple'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The questions'),
        ),
        body: _indexx < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_indexx]['questionText'].toString(),
                  ),
                  ...(questions[_indexx]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestions, answer);
                  }).toList()
                ],
              )
            : Center(child: Text('hurray')),
      ),
    );
  }
}
