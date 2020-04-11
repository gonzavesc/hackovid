import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String buttonText;
  Answer(this.selectHandler, this.buttonText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white70,
        onPressed: selectHandler,
        child: Text(buttonText),
      ),
    );
  }
}
