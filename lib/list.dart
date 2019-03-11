import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LongList extends StatelessWidget{
  var items = ['李磊','小明','小黄'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
        return ListTile(title: Text('${items[index]}'));
    });
  }
}

class MyHorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ListTile(leading: new Icon(Icons.phone)),
        ListTile(leading: new Icon(Icons.print)),
        ListTile(
          leading: new Icon(Icons.access_alarm),
        )
      ],
    );
  }
}

class Mylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(leading: new Icon(Icons.phone), title: Text('1')),
        ListTile(title: Text('2')),
        ListTile(
          title: Text('3'),
        )
      ],
    );
  }
}