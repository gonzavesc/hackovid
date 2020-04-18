import 'package:flutter/material.dart';
import '../Models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList({this.transactions});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: SingleChildScrollView(
                  child: Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(DateFormat.yMMMd().format(tx.date),
                            style: TextStyle(fontSize: 14, color: Colors.grey))
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      );
  }
}