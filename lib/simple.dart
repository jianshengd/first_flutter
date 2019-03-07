import 'package:flutter/material.dart';


class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('It is a Simple Flutter'),
        ),
        body: new Center(
          child: new Text('Simple Exercise'),
        ),
      ),
    );
  }
}