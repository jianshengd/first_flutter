import 'package:flutter/material.dart';
import 'words.dart';
import 'simple.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

//    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: SimpleWidget(),
    );
  }
}


