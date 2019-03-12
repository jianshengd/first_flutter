import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () async {
        final result = await  Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Page2()),
        );
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result")));
      },
      child: Text('跳转到2'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(color: Colors.pink),
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pop(context,"返回值");
              },
              child: Text('返回到1'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('3'),
            )
          ],
        ));
  }
}
