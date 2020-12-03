import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/MyHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'zgcenv',
        theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: 'Sans',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: new Home(title: '中关村至臻环保股份有限公司'),
    );
  }
}
