import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图标"),
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.airport_shuttle,
              color: Colors.deepOrange,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
