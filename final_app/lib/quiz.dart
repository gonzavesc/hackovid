import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]
            ["questionText"]), //same as questions.elementAt()
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          // the three dots spread all the surrounding list
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
