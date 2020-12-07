import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  MyContainer({Key key}) : super(key: key);

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Column(
        children: [
          Container(
            //padding: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            // padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
            color: Colors.red[100],
            child: Text(
              '至臻环保',
              style: TextStyle(fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}
