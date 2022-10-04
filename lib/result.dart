import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final void Function() resetHandler;
  final int resultScore;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'Hurrray';
    if (resultScore <= 8) {
      resultText = 'HAHA Awesome';
    } else {
      resultText = 'Smarty';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        TextButton(
          child: Text('Restart Quiz'),
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
