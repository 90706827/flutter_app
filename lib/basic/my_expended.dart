import 'package:flutter/material.dart';

class MyExpended extends StatefulWidget {
  MyExpended({Key key}) : super(key: key);

  @override
  _MyExpendedState createState() => _MyExpendedState();
}

class _MyExpendedState extends State<MyExpended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Expanded'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "弹性布局",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '弹性布局允许子组件按照一定比例来分配父容器空间。',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      color: Colors.amber,
                      child: Text("至臻环保"),
                    )),
                Expanded(
                    flex: 2, child: Image.asset('static/images/Avril.jpg')),
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      color: Colors.lime,
                      child: Text('你我同行'),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 400.0,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.amber,
                        child: Text("至臻环保至臻环保至臻环保至臻环保至臻环保至臻环保至臻环保至臻环保至臻环保至臻环保"),
                      )),
                  Expanded(
                      flex: 2, child: Image.asset('static/images/Avril.jpg')),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.lime,
                        child: Text('你我同行你我同行你我同行你我同行你我同行你我同行你我同行你我同行你我同行你我同行'),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
