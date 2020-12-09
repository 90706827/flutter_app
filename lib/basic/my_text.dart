import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  MyText({Key key}) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  int _counter = 0;
  String name = '张三';

  void getData() async {
    name = await Future.delayed(Duration(seconds: 3), () {
      print('await 3 seconds');
      return '等三秒变李四';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Widget生命周期 初始化：initState()');
    _counter = 199;
    getData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('Widget生命周期 销毁:dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('Widget生命周期 可多次执行:build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('文本'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '中关村至臻环保股份有限公司$_counter',
            style: TextStyle(
              fontFamily: 'Sans',
              letterSpacing: 5,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
          Text(
            '看代码异步加载$_counter',
            style: TextStyle(
              fontFamily: 'Sans',
              letterSpacing: 5,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Text('增加'),
      ),
    );
  }
}
