import 'package:flutter/material.dart';
import 'package:flutter_app/model/Students.dart';
import 'package:flutter_app/widget/card_widget.dart';

class MyList extends StatefulWidget {
  MyList({Key key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Students> list = [
    Students(name: '张三', sex: '男', age: 23),
    Students(name: '张三', sex: '男', age: 23),
    Students(name: '张三', sex: '男', age: 23),
    Students(name: '张三', sex: '男', age: 23),
    Students(name: '张三', sex: '男', age: 23),
    Students(name: '张三', sex: '男', age: 23),
    Students(name: '张三', sex: '男', age: 23),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('列表'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: list.map((student) {
          return CardWidget(
            student: student,
            delete: () {
              setState(() {
                list.remove(student);
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
