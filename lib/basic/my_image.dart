import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("图片加载"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 1.0, top: 10.0, right: 1.0, bottom: 10.0),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('static/images/Avril.jpg'),
                radius: 50,
              ),
            ),
          ),
          // 加载网络图片
          Image(
            image: NetworkImage(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3813707197,1954539734&fm=26&gp=0.jpg'),
          ),
          // 图片本地图片
          Image(
            image: AssetImage('static/images/Avril.jpg'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: new Text("加载"),
      ),
    );
  }
}
