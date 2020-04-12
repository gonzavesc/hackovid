import 'package:first_app/screen3.dart';
import 'package:flutter/material.dart';

import './screen_2.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      routes: <String, WidgetBuilder>{
        Register.routeName: (BuildContext context) => Register(),
        ChooseRole.routeName: (BuildContext context) => ChooseRole()
      },
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(child: Image.asset('assets/images/LOGO.png')),
          Container(
              child: TextField(
                decoration: InputDecoration(labelText: "Usuari"),
              ),
              margin: EdgeInsets.only(left: 40, right: 40, top: 1, bottom: 0),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF345EA8), width: 50))),
          Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Contrasenya"),
            ),
            margin: EdgeInsets.only(left: 40, right: 40, top: 0, bottom: 20),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF345EA8), width: 50)),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                // use the navigator to goto a named route
                Navigator.of(context).pushNamed('/about');
              },
              child: Text("Registrar-se "),
              color: Color(0xFFE7578E),
            ),
            margin: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
