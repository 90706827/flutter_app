import 'package:flutter/material.dart';
import 'package:flutter_app/model/Students.dart';

class CardWidget extends StatelessWidget {
  final Students student;
  final Function delete;

  CardWidget({this.student, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Row(
          children: [
            Text(
              '${student.name} - ${student.sex} - ${student.age}岁',
              style: TextStyle(
                color: Colors.red,
                //字符间隔
                letterSpacing: 1,
                fontSize: 30.0,
              ),
            ),
            FlatButton.icon(
              onPressed: delete,
              label: Text('删除'),
              icon: Icon(Icons.delete),
            )
          ],
        ));
  }
}
