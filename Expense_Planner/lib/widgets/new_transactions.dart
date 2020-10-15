import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTX;

  NewTransaction(this.addTX);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _selectedDate;

  void _submitData() {
    if (_amountController.text.isEmpty){
      return;
    }
    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0 || _selectedDate == null) {
      return;
    }

    widget.addTX(
      enteredTitle,
      enteredAmount,
      _selectedDate,
    );

    Navigator.of(context).pop();
  }

  void _presentDatepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
         _selectedDate = pickedDate;
      });
    });
  }

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
              controller: _titleController,
              onSubmitted: (_) => _submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) =>
                  _submitData(), //(_) Will accept it buy will not use.
            ),
            Row(
              children: <Widget>[
                Expanded(
                                  child: Text(
                    _selectedDate == null
                        ? 'No Date Chosen'
                        : 'Date: ${DateFormat.yMd().format(_selectedDate)}',
                  ),
                ),
                Container(
                  height: 70,
                  child: FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text('Choose Date'),
                    onPressed: _presentDatepicker,
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text('Add Item'),
              textColor: Colors.white,
              color: Colors.purple,
              onPressed:
                  _submitData, //double.parse() parse a string into a double
            )
          ],
        ),
      ),
    );
  }
}
