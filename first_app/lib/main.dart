import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      "questionText": "What is your favourite color?",
      "answers": ["Blue", "Red", "Yellow", "White"]
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": ["Tiger", "Snake", "Elephant", "Lion"]
    },
    {
      "questionText": "What is your favourite instructor?",
      "answers": ["Max", "Max", "Max", "Max"]
    }
  ];

  void _answerQuestion() {
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
      body: (_questionIndex < questions.length)
          ? Column(
              children: <Widget>[
                Question(questions[_questionIndex]
                    ["questionText"]), //same as questions.elementAt()
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  // the three dots spread all the surrounding list
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
          : Center(child: Text("You did it!")),
    ));
  }
}
