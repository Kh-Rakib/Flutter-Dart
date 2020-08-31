import 'dart:convert';
import 'package:flutter/material.dart';

class JsonData extends StatefulWidget {
  @override
  _JsonDataState createState() => _JsonDataState();
}

class _JsonDataState extends State<JsonData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page Data Visualization'),
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/stock_market_data.json'),
          builder: (context, snapshot) {
            var myData = jsonDecode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                        child: Text(myData[index]['trade_code'][0])),
                    title: Text(myData[index]['trade_code']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "\nHigh:" + myData[index]['high'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Low:" + myData[index]['low'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Open:" + myData[index]['open'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Close:" + myData[index]['close'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Volume:" + myData[index]['volume'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "\nDate:" + myData[index]['date'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  elevation: 3,
                );
              },
              itemCount: myData == null ? 0: myData.length,
            );
          },
        ),
      ),
    );
  }
}
