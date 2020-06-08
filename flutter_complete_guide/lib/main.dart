import 'Package:flutter/material.dart';
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
  var questionIndex =0 ;

  void amswerQuestion() {
    setState((){
    questionIndex = questionIndex + 1;

    }); 
 
    print(questionIndex);
  }
  @override
  //We make a class MyApp which inherit another class which is provided by material.dart
  Widget build(BuildContext context) {
    //build is a method here with type:Widget and context is a argument ,This argument will call by flutter
    var question = [ 'What is You Name',
    'What is youor favourirte color?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App')
        ),
        body: Column(
          children: <Widget>[
            Text(question[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: amswerQuestion), //BUTTON
            Text('Question 2 '),
            RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer 2 chosen'),), //BUTTON //Here ()= is an anonymous function
             Text('Question 3 '),
            RaisedButton(child: Text('Answer 3'), onPressed: amswerQuestion), //BUTTON
          ],
        ),
      ),
    );
    //buuild method should return something
    //MaterialApp is a class which takes a named argument
  }
}
