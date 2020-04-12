import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {
  static const String routeName = "/user_register";
  String userId;
  String quantity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              child: TextField(
                onChanged: (str){userId=str;},
                decoration: InputDecoration(labelText: "Identificador"),
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
              onChanged: (str)=>(quantity=str),
                decoration: InputDecoration(labelText: "Import desitjat")),
            margin: EdgeInsets.only(left: 40, right: 40, top: 0, bottom: 20),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF345EA8), width: 30),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
          ),
          Container(child: RaisedButton(onPressed: (){print(userId); print(quantity);},child: Text("Submit"),),)
        ],
      ),
    ));
  }
}
