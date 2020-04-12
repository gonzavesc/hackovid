import 'package:flutter/material.dart';

class Usuari extends StatelessWidget {
  static const String routeName = "/usuari";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF345EA8)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Hola Jordi!",
                style: TextStyle(fontSize: 28),
              ),
              margin: EdgeInsets.only(bottom: 10),
            ),
            Image.asset(
              'assets/images/harold.jpg',
              width: 250,
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  // use the navigator to goto a named route
                  Navigator.of(context).pushNamed('/Voluntari');
                },
                child: Text("Iniciar la compra", style: TextStyle(fontSize: 28),),
                color: Color(0xFF345EA8),
              ),
              margin: EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }
}
