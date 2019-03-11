import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class DismissButton extends StatelessWidget{
  var items = ['李磊','小明','小黄','李磊2','小明2','小黄2','李磊3','小明3','小黄3','李磊4','小明4','小黄4','李磊5','小明5','小黄5','李磊6','小明6','小黄6'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
        return Dismissible(
          //滑动方向
          direction: DismissDirection.endToStart,
          key: new Key(items[index]),
          child: ListTile(title: Text(items[index])),
          //滑动颜色
          background: Container(color: Colors.red),
          onDismissed:(direction){
            //移除
            items.removeAt(index);
            Scaffold.of(context).showSnackBar(
                new SnackBar(content: new Text("${items[index]} dismissed")));
          },
        );
    });
  }

}
/**
 * 水波纹按钮
 */
class InkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text('Tap'),
        ));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text('Flat Button'),
      ),
    );
  }
}

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
