import 'Package:flutter/material.dart';
//we are importing built in package from flutter
//material.dart is a package of built in theme/buttons

void main() {
  //main is a special kind of function when the app starts it first execute main function
  runApp(MyApp());
  //runApp is function which provided by material.dart
}

class MyApp extends StatelessWidget {
  @override
  //We make a class MyApp which inherit another class which is provided by material.dart
  Widget build(BuildContext context) {
    //build is a method here with type:Widget and context is a argument ,This argument will call by flutter
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('Hello World\'s'),
      ),
    );
    //buuild method should return something
    //MaterialApp is a class which takes a named argument
  }
}
