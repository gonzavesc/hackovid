import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

String _host = "IP";
String path = 'api/order-candidate';

Map jsonData = {
  'orderAmount': '',
  'lat': '41.1',
  'lon': '0.3',
  'contactIdentifier': ''
};

Future apiTest() async {
  HttpClientRequest request = await HttpClient().post(_host, 8080, path) /*1*/
    ..headers.contentType = ContentType.json /*2*/
    ..write(jsonEncode(jsonData)); /*3*/
  HttpClientResponse response = await request.close(); /*4*/
  await utf8.decoder.bind(response /*5*/).forEach(print);
}
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
                onChanged: (str){jsonData['contactIdentifier']=str;},
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
              onChanged: (str)=>(jsonData['orderAmount']=str),
                decoration: InputDecoration(labelText: "Import desitjat")),
            margin: EdgeInsets.only(left: 40, right: 40, top: 0, bottom: 20),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF345EA8), width: 30),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
          ),
          Container(child: RaisedButton(onPressed: (){Future a = apiTest();},child: Text("Fer comanda"),),)
        ],
      ),
    ));
  }
}
