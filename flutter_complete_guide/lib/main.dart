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

  Widget build(BuildContext context) {  
    //Widget is the type here build will return something which is a Widget
    //Context here is an Argument
      return MaterialApp(home: Text('Hello!'),);
      //MaterialApp is a class
      //Home is a Argument
      //Text here is a Object provided by maaterial.dart
  }
  
}