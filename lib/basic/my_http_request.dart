import 'package:flutter/material.dart';
import 'package:flutter_app/basic/http/HttpService.dart';
import 'package:flutter_app/basic/http/post_detail.dart';

import 'http/Post.dart';

class MyHttpRequest extends StatefulWidget {
  MyHttpRequest({Key key}) : super(key: key);

  @override
  _MyHttpRequestState createState() => _MyHttpRequestState();
}

class _MyHttpRequestState extends State<MyHttpRequest> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http Request'),
        ),
        body: FutureBuilder(
          future: httpService.getPosts(),
          builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> posts = snapshot.data;

              return ListView(
                  children: posts
                      .map(
                        (Post post) => ListTile(
                          title: Text(post.title),
                          subtitle: Text(post.id.toString()),
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PostDetail(
                                        post: post,
                                        httpService: httpService,
                                      ))),
                        ),
                      )
                      .toList());
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
