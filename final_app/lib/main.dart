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
      body: ListView(
        children: <Widget>[
          Center(child: Image.asset('assets/images/LOGO.png')),
          Container(
            child: TextField(),
            margin: EdgeInsets.only(left: 40, right: 40, top: 1, bottom: 20),
          ),
          Container(
            child: TextField(),
            margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
          ),
          RaisedButton(onPressed: null,child: Text("Registrar-se "))
        ],
      ),
    ));
  }
}
