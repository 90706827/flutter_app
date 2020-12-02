import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '中关村至臻环保',
        theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: 'Sans',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home());
  }
}
