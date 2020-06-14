import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

String get resultphrase {
  var resultText = 'You Did It!!';
  if(resultScore <= 8){
    resultText = 'You are Awesome!';
  } else if (resultScore <=12) {
    resultText = 'Preety Likable';
  }else if(resultScore <=16){
    resultText ='You are so bad';
  }else {
    resultText='You are so bad';
  }
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler ,),
        ],
      ),
    );
  }
}
