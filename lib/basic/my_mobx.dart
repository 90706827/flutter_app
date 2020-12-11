import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/basic/mobx/mobx_page.dart';

class MyMobx extends StatefulWidget {
  @override
  _MyMobxState createState() => _MyMobxState();
}

class _MyMobxState extends State<MyMobx> {
  @override
  Widget build(BuildContext context) {
    return MobxPage();
  }
}
