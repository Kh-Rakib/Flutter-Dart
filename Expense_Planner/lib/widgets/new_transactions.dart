import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTX;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTX);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add Item'),
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                addTX(
                  titleController.text,
                  double.parse(amountController.text), //parse a string into a double
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
