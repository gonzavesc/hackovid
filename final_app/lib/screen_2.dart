import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = "/about";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Center(child: Text("Registrat a ConectAPP"))],
        ),
      ),
    );
  }
}
