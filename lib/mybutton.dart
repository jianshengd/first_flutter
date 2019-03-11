import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
//      onTap: () {
//        _showToast('MyButton was onTap!');
//      },
      onTapDown: (details) {
        _showToast('MyButton was onTapDown!');
      },
      onTapUp: (details) {
        _showToast('MyButton was onTapUp!');
      },
      onTapCancel: () {
        _showToast('MyButton was onTapCancel!');
      },
      onDoubleTap: () {
        _showToast('MyButton was onDoubleTap!');
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }
}

void _showToast(String msg) {
  Fluttertoast.showToast(msg: msg);
}