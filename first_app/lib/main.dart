import 'package:flutter/material.dart';

import "./quiz.dart";
import './result.dart';

// void main(){
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
  // the _ in front of the name makes it private!!
  var _questionIndex = 0;
  final _questions = const [
    {
      "questionText": "What is your favourite color?",
      "answers": [
        {"text": "Blue", "score": 10},
        {"text": "Red", "score": 6},
        {"text": "Yellow", "score": 4},
        {"text": "White", "score": 2}
      ]
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": [
        {"text": "Tiger", "score": 10},
        {"text": "Snake", "score": 6},
        {"text": "Elephant", "score": 4},
        {"text": "Lion", "score": 2}
      ]
    },
    {
      "questionText": "What is your favourite instructor?",
      "answers": [
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1}
      ]
    }
  ];
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "MyApp!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
