import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<Post> fetchPost() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');
  final responseJson = json.decode(response.body);

  return new Post.fromJson(responseJson);
}

Future<Post> dioPost() async {
  Response<String> response =
      await Dio().get('https://jsonplaceholder.typicode.com/posts/1');
  final responseJson = json.decode(response.data);

  return new Post.fromJson(responseJson);
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class PostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.pinkAccent),
      child: new FutureBuilder<Post>(
        future: dioPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return new Text(
                'title：${snapshot.data.title},\nbody: ${snapshot.data.body}');
          } else if (snapshot.hasError) {
            return new Text("异常：${snapshot.error}");
          }
          // By default, show a loading spinner
          return new CircularProgressIndicator();
        },
      ),
    );
  }
}

///WEB
class WebContainer extends StatefulWidget {
  var channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
  @override
  State<StatefulWidget> createState() {
    return WebState();
  }
}

class WebState extends State<WebContainer> {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: <Widget>[
          Form(
            child: TextFormField(
              controller: _controller,
              decoration: new InputDecoration(labelText: 'Send a message'),
            ),
          ),
          StreamBuilder(
            stream: widget.channel.stream,
            builder: (context, snapshot) {
              return new Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: new Text(snapshot.hasData ? '结果：${snapshot.data}' : '结果：null'),
              );
            },
          ),
          FloatingActionButton(
            onPressed: _sendMessage,
            tooltip: 'Send message',
            child: new Icon(Icons.send),
          ), // This traili
        ],
      ),
    );
  }

  void _sendMessage() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        widget.channel.sink.add(_controller.text);
      }
    });
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}
