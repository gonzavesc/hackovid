import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", amount: 79.99, title: "New Shoes", date: DateTime.now()),
    Transaction(
        id: "t2",
        title: "Weekly Groceries",
        amount: 16.43,
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text("CHART!"),
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        )),
                        child: Text(
                          "${tx.amount}€",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(tx.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          Text(tx.date.toString(),style: TextStyle(fontSize: 14,color: Colors.grey))
                          
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
