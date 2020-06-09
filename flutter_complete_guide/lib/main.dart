import 'Package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
//we are importing built in package from flutter
//material.dart is a package of built in theme/buttons

void main() {
  //main is a special kind of function when the app starts it first execute main function
  runApp(MyApp());
  //runApp is function which provided by material.dart
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _amswerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  //We make a class MyApp which inherit another class which is provided by material.dart
  Widget build(BuildContext context) {
    //build is a method here with type:Widget and context is a argument ,This argument will call by flutter
    var question = ['What is You Name', 'What is youor favourirte color?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(
          children: <Widget>[
            Question(question[_questionIndex]),
            Answer(_amswerQuestion),
            Answer(_amswerQuestion),
            Answer(_amswerQuestion),
          ],
        ),
      ),
    );
    //buuild method should return something
    //MaterialApp is a class which takes a named argument
  }
}
