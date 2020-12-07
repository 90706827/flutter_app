import 'package:flutter/material.dart';

class MyPadding extends StatefulWidget {
  MyPadding({Key key}) : super(key: key);

  @override
  _MyPaddingState createState() => _MyPaddingState();
}

class _MyPaddingState extends State<MyPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Padding(
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
    );
  }
}
