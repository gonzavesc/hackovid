import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion (){
    questionIndex = questionIndex + 1;
    print("Answer chosen");
  }
  var questions = ["What is your favourite color", "What is your favourite animal"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("MyApp!"),
      ),
      body: Column(children: <Widget>[Text(questions.elementAt(questionIndex)),  //same asd questions[0]
      RaisedButton(child: Text("First option"), onPressed: answerQuestion,),
      RaisedButton(child: Text("Second option"), onPressed: () => print("Second chosen"),)],),
    ));
  }
}
