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
        AboutPage.routeName: (BuildContext context) => AboutPage(),
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
            child: TextField(),
            margin: EdgeInsets.only(left: 40, right: 40, top: 1, bottom: 20),
          ),
          Container(
            child: TextField(),
            margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
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
