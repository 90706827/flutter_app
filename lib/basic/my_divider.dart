import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('线条(分隔器)'),
        backgroundColor: Colors.grey,
        //阴影
        elevation: 1.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(
            height: 20,
            color: Colors.green,
          ),
          SizedBox(
            height: 30,
            child: Text('sizebox'),
          ),
          Divider(
            height: 20,
            color: Colors.green,
          ),
          Text(
            'Jimmy',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 20,
            color: Colors.green,
          ),
          Text(
            'Favorite',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2,
              fontSize: 28,
            ),
          ),
        ],
      ),
    );
  }
}
