import 'package:flutter/material.dart';

class MySafeArea extends StatefulWidget {
  MySafeArea({Key key}) : super(key: key);

  @override
  _MySafeAreaState createState() => _MySafeAreaState();
}

class _MySafeAreaState extends State<MySafeArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SafeArea
      body: SafeArea(
        child: Column(
          children: [
            Text('SafeArea使用'),
            Text('在没有appBar时使用,使页面不置顶展示'),
            Text('躲开屏幕顶端的时间、信号、电量')
          ],
        )
      ),
    );
  }
}
