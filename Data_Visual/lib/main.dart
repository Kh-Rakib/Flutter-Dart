import 'package:flutter/material.dart';
import './JsonData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widet is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JsonData(),
    );
  }
}

