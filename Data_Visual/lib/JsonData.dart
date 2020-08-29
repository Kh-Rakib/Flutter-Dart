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
        child: FutureBuilder(builder: (context, snapshot){
          var myData=json.decode(snapshot.data.toString());
          return ListView.builder(       
                
            itemBuilder: (BuildContext context, int index){
              return Card (child: 
              ListTile (
                leading: CircleAvatar(child: Text(myData[index]['trade_code'][0])),
                title: Text(myData[index]['trade_code']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(myData[index]['date']),
                    Text(myData[index]['high']),
                    Text(myData[index]['low']),
                    Text(myData[index]['open']),
                    Text(myData[index]['close']),
                    Text(myData[index]['volume']),
                  ],
                ),
                isThreeLine: true,
              ),
              elevation: 3,
              );
            },
            itemCount: myData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/stock_market_data.json"),
        
        ),
      ),
      
    );
  }
}