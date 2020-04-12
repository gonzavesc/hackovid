import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  static const String routeName = "/about";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Registrat a ContectApp",
          style: TextStyle(fontSize: 28),
        ),
        Container(
          child: CheckboxListTile(
            value: false,
            title: Text("Fer servir correu o número de Telèfon"),
            onChanged: (bool value) {
              Navigator.of(context).pushNamed('/role');
            },
          ),
          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
          color: Color(0xFFE7578E),
        ),
        Container(
          child: CheckboxListTile(
            value: false,
            title: Text("Continuar amb Google"),
            onChanged: (bool value) {
              Navigator.of(context).pushNamed('/role');
            },
          ),
          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
          color: Color(0xFFf7A90F),
        ),
        Container(
          child: CheckboxListTile(
            value: false,
            title: Text("Continuar amb Facebook"),
            onChanged: (bool value) {
              Navigator.of(context).pushNamed('/role');
            },
          ),
          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
          color: Color(0xFF345EA8),
        )
      ],
    )));
  }
}
