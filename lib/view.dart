import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: <Widget>[
          IconButton(
            tooltip: '提示',
            icon: new Icon(Icons.menu),
            onPressed: () => _showToast('icon 点击'),
          ),
          FlatButton(
            onPressed: () => _showToast('flat 点击'),
            child: Text('点击'),
          ),
          Expanded(
            child: Text('文本'),
          ),
          FlatButton.icon(
              onPressed: () => _showToast('float 点击'),
              icon: new Icon(Icons.accessibility),
              label: new Text('label')),
        ],
      ),
    );
  }
}

void _showToast(String msg) {
  Fluttertoast.showToast(msg: msg);
}