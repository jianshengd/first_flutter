import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
            debugPrint("showToast");
            Fluttertoast.showToast(
                msg: '导航栏',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                textColor: Colors.red,
                backgroundColor: Colors.black);
          },
        )
      ],
    ),
      body: Text('body'),
    );
  }
}
