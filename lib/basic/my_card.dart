import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('卡片'),
      ),
      body: Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Text(
          '卡-----------片',
          style: TextStyle(
            color: Colors.red,
            //字符间隔
            letterSpacing: 1,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
