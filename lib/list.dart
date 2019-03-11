import 'package:flutter/material.dart';

class MyGridList extends StatelessWidget{
  var items = ['李磊','小明','小黄','李磊2','小明2','小黄2','李磊3','小明3','小黄3','李磊4','小明4','小黄4','李磊5','小明5','小黄5','李磊6','小明6','小黄6'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(crossAxisCount: 3,
    children: List.generate(items.length,(index){
      return Center(child: Text(items[index],style: Theme.of(context).textTheme.headline),);
    }),);
  }

}

class MultList extends StatelessWidget{
  var items = ['李磊',1,true];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          if(items[index] is int){
            return ListTile(title: Text('int ${items[index]}'));
          }else if(items[index] is String){
            return ListTile(title: Text('String ${items[index]}'));
          }else if(items[index] is bool){
            return ListTile(title: Text('bool ${items[index]}'));
          }
          return ListTile(title: Text('${items[index]}'));
        });;
  }

}

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