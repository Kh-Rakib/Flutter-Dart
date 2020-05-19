import 'package:flutter/material.dart';
//import some files or getting access from files of SDK

void main() {
//This is the main function when app starts this will
//Get called first or Execute first

  runApp(MyApp());
//runApp is a function provided by material.dart file
//This function will help to render
//Onto the screen by calling constructor
}

class MyApp extends StatelessWidget {
  //MyApp is a custom made class that inherit StatelessWidget
  @override
  Widget build(BuildContext context) {
    //Widget is the type here build will return something which is a Widget
    //Context here is an Argument
    var questions = ['What\'s your favourite color ?', 'What\'s Your Favourute Animal?',];
    return MaterialApp(
      home: Scaffold(
        //home is a argument here
        //scaffold is a widget for base page design
        appBar: AppBar(
          //appBar is an argument
          //AppBar is a widget 
          title: Text('My First App'),
          //title is a argument takes Text to show
        ),
        body: Column(children: [
          Text('This is the question !!'),
          RaisedButton(child: Text('Answer 1'), onPressed: null),
          RaisedButton(child: Text('Answer 2'), onPressed: null), 
          RaisedButton(child: Text('Answer 3'), onPressed: null),  
        ],),
        //it's the app body
      ),
    );
    //MaterialApp is a class
    //Home is a Argument
    //Text here is a Object provided by maaterial.dart
  }
}
