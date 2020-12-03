import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';

class MyHome extends State<Home>{
  int _counter = 0;

  void _addCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(
            fontFamily: 'Serif',
            letterSpacing: 5,
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      //文本
      // body: MyText(),
      //按钮
      // body: MyButton(),
      //图片
      // body: MyImage(),
      // 边距
      // body: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
      //   child: Text('Hello'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
              FlatButton(
                  onPressed: () {
                    print('点击按钮');
                  },
                  color: Colors.green,
                  child: Text('点击按钮')),
            ],
          ),
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
                print('点击按钮');
              },
              color: Colors.green,
              child: Text('点击按钮')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('动动'),
        onPressed: () {
          _addCounter();
          print('点击按钮');
        },
      ),
    );
  }

}