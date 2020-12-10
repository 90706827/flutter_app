import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/basic/http/HttpService.dart';

import 'Post.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  final HttpService httpService;

  const PostDetail({Key key, @required this.post, this.httpService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () async {
          await httpService.deletePost(post.id);
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text("Title"),
                subtitle: Text(post.title),
              ),
              ListTile(
                title: Text("ID"),
                subtitle: Text('${post.id}'),
              ),
              ListTile(
                title: Text("Body"),
                subtitle: Text(post.body),
              ),
              ListTile(
                title: Text("User ID"),
                subtitle: Text('${post.userId}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
