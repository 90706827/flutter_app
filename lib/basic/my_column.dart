import 'package:flutter/material.dart';

class MyColumn extends StatefulWidget {
  MyColumn({Key key}) : super(key: key);

  @override
  _MyColumnState createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            '张先生',
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20.0),
          ),
          Container(
            //padding: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            // padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
            color: Colors.red[100],
            child: Text(
              '至臻环保',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              //padding: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              // padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              color: Colors.red[100],
              child: Text(
                '你我同行',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  print('点击按钮');
                });
              },
              color: Colors.green,
              child: Text('点击按钮')),
        ],
      ),
    );
  }
}
