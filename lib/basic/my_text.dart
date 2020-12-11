import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  MyText({Key key}) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              child: Center(child: Text('中关村至臻环保股份有限公司')),
              style: select
                  ? TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)
                  : TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
              duration: Duration(milliseconds: 200))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            select = !select;
          });
        },
        child: Text('变'),
      ),
    );
  }
}
