import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ByText.dart';
import 'package:flutter_app/MyButton.dart';

import 'MyImage.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '小麦睡了吗',
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
      body: Container(
        //padding: EdgeInsets.all(50),
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
        // padding: EdgeInsets.fromLTRB(60, 60, 60, 60),
        color: Colors.red[100],
        child: Text('大美女',style: TextStyle(fontSize: 30.0),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('心动'),
        onPressed: () {
          print('点击按钮');
        },
      ),
    );
  }
}