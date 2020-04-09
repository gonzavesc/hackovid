import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = ["What is your favourite color", "What is your favourite animal"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("MyApp!"),
      ),
      body: Column(children: <Widget>[Text("Thequestion"),
      RaisedButton(child: Text("First option"),onPressed: null,),
      RaisedButton(child: Text("Second option"), onPressed: null,)],),
    ));
  }
}
