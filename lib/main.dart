import 'package:flutter/material.dart';
import 'words.dart';
import 'simple.dart';
import 'framework.dart';
import 'mybutton.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'App title',
      theme: new ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: MyFramework()
    );
  }
}


