import 'package:flutter/material.dart';
import 'package:flutter_app/basic/speed/speed_dial_page.dart';

class MySpeedDial extends StatefulWidget {
  MySpeedDial({Key key}) : super(key: key);

  @override
  _MySpeedDialState createState() => _MySpeedDialState();
}

class _MySpeedDialState extends State<MySpeedDial> {
  @override
  Widget build(BuildContext context) {
    return SpeedDialPage();
  }
}