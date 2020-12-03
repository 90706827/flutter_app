import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/MyHome.dart';

class Home extends StatefulWidget  {
  Home({Key key, this.title}) : super(key: key);
  final title;

  @override
  State<StatefulWidget> createState() => new MyHome();

}
