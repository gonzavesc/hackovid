import 'package:flutter/material.dart';

class Voluntari extends StatelessWidget {
  static const String routeName = "/voluntari";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFE7578E)),
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
              'assets/images/Voluntari.JPG',
              width: 250,
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  // use the navigator to goto a named route
                  Navigator.of(context).pushNamed('/Voluntari');
                },
                child: Text("Tens 4 avisos", style: TextStyle(fontSize: 28),),
                color: Color(0xFFE7578E),
              ),
              margin: EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }
}
