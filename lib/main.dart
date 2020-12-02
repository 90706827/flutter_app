import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '中关村至臻环保',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Sans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '中关村至臻环保股份有限公司',
            style: TextStyle(
              fontFamily: 'Serif',
              letterSpacing: 5,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "中关村至臻环保",
            style: TextStyle(
              fontFamily: 'Sans',
              letterSpacing: 5,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('按钮'),
          onPressed: () {
            print('点击按钮');
          },
        ),
      ),
    );
  }
}
