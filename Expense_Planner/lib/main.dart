import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  //Myapp here is a class which inherit Statelesswidget
  @override
  Widget build(BuildContext context) {
    //build is a method (Function inside of a class is Method)
    return MaterialApp(
      // context is a argument of special type buildcontext
      title:
          'Flutter App', // Context will call by flutter to do heavy lifting behind the scene
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoe',
      amount: 99.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Shirt',
      amount: 69.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Container(
              color: Colors.blue[300],
              width: double.infinity,
              child: Text('CHART!'),
            ),
            elevation: 5,
          ),
          Column(
            children: transactions.map((tx) {
              return Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${tx.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Text(
                          tx.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple[200],
                          ),
                        ),
                      
                      Text(
                        tx.date.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
