import 'package:flutter/material.dart';
import 'package:flutter_app/basic/page/my_safe_area.dart';
import 'package:flutter_app/basic/page/page_home.dart';
import 'package:flutter_app/basic/page/page_one.dart';
import 'package:flutter_app/basic/page/page_two.dart';

class MyPageRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //初始路径
      initialRoute: '/home',
      //路径集合
      routes: {
        '/home': (context) => PageHome(),
        '/safeArea': (context) => MySafeArea(),
        '/one': (context) => PageOne(),
        '/two': (context) => PageTwo(),
      },
    );
  }
}
