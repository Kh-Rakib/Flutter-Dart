import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget { //Myapp here is a class which inherit Statelesswidget
  @override 
  Widget build (BuildContext context) {  //build is a method (Function inside of a class is Method)
    return MaterialApp(                  // context is special is a argument of type buildcontext
      title: 'Flutter App',              // Context will call by flutter to do heavy lifting behind the scene
      home: MyHomePage(),                
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Flutter App'),
      ),
      body: Center(
            child: Text('Widget Playground!'),
              ),
            );
  }
}