import 'package:flutter/material.dart';

class ChooseRole extends StatelessWidget {
  static const String routeName = "/role";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(child: Image.asset('assets/images/LOGO.png')),
          Container(
            child: RaisedButton(
              onPressed: () {
                // use the navigator to goto a named route
                Navigator.of(context).pushNamed('/about');
              },
              child: Text(
                "Vull anar a comprar",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              color: Color(0xFF345EA8),
            ),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                // use the navigator to goto a named route
                Navigator.of(context).pushNamed('/voluntari');
              },
              child: Text("Sóc Voluntari",
                  style: TextStyle(fontSize: 28, color: Colors.white)),
              color: Color(0xFFE7578E),
            ),
            margin: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
