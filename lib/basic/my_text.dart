import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  MyText({Key key}) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '中关村至臻环保股份有限公司$_counter',
            style: TextStyle(
              fontFamily: 'Sans',
              letterSpacing: 5,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Text('增加'),
      ),
    );
  }
}
