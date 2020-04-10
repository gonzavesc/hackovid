import 'package:flutter/material.dart';


import './question.dart';
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
class _MyAppState extends State<MyApp> { // the _ in front of the name makes it private!!
  var _questionIndex = 0;
  void _answerQuestion (){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
      body: Column(children: <Widget>[Question(questions.elementAt(_questionIndex)),  //same asd questions[0]
      RaisedButton(child: Text("First option"), onPressed: _answerQuestion,),
      RaisedButton(child: Text("Second option"), onPressed: () => print("Second chosen"),)],),
    ));
  }
}
