import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        children: [
//          图标按钮
          RaisedButton(
            onPressed: () {
              print('Raised按钮');
            },
            child: Text('点击我'),
            color: Colors.lightBlue,
          ),
          // 图标按钮
          FlatButton(
            onPressed: () {
              print('Flat按钮');
            },
            child: Text('点击我'),
            color: Colors.lightBlue,
          ),
          // 图标按钮
          RaisedButton.icon(
            onPressed: () {
              print('图标按钮');
            },
            icon: Icon(Icons.mail),
            label: Text('mail me'),
            color: Colors.amber,
          ),
          // 图标按钮
          IconButton(
            onPressed: () {
              print('图标按钮');
            },
            icon: Icon(Icons.mail),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
