import 'package:flutter/material.dart';

class MyRow extends StatefulWidget {
  MyRow({Key key}) : super(key: key);

  @override
  _MyRowState createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('行'),
      ),
      body: Column(
        //对齐方式
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Text('至臻环保，你我同行！')),
              Expanded(child: Text('至臻环保，你我同行！')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '张先生$_counter',
                style:
                    TextStyle(color: Colors.deepPurpleAccent, fontSize: 20.0),
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
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          onPressed: () {
                            setState(() {
                            });
                          },
                          color: Colors.green,
                          child: Text('点击按钮')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Text(
          '增加',
        ),
      ),
    );
  }
}
