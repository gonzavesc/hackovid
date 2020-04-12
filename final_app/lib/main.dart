import 'package:first_app/screen3.dart';
import 'package:first_app/usuari/register_user.dart';
import 'package:first_app/usuari/screen1_user.dart';
import 'package:first_app/voluntari/screen1_vol.dart';
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
        ChooseRole.routeName: (BuildContext context) => ChooseRole(),
        Voluntari.routeName: (BuildContext context) => Voluntari(),
        Usuari.routeName: (BuildContext context) => Usuari(),
        UserRegister.routeName: (BuildContext context) => UserRegister()
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
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(labelText: "Usuari"),
              ),
              margin: EdgeInsets.only(left: 40, right: 40, top: 1, bottom: 0),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF345EA8), width: 30),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)))),
          Container(
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Contrasenya")),
            margin: EdgeInsets.only(left: 40, right: 40, top: 0, bottom: 20),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF345EA8), width: 30),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
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
