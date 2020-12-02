import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '中关村至臻环保',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('中关村至臻环保股份有限公司'),
          centerTitle: true,
        ),
        body: Center(
          child: Text("中关村至臻环保"),
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
