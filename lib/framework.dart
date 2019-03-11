import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'list.dart';

class MyFramework extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FrameState();
  }
}

class FrameState extends State<MyFramework> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试框架'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
//            debugPrint("showToast");
              _logI('onPressed');
              _showToast('导航栏');
            },
          )
        ],
      ),
      body: MyGridList(),
    );
  }
}

void _showToast(String msg) {
  Fluttertoast.showToast(msg: msg);
}

void _logI(String log) {
  debugPrint(log);
}
