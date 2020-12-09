import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  MyButton({Key key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        children: [
//          图标按钮
          RaisedButton(
            onPressed: () {
              setState(() {
                print('Raised按钮');
              });
            },
            child: Text('Raised按钮'),
            color: Colors.lightBlue,
          ),
          // 图标按钮
          FlatButton(
            onPressed: () {
              setState(() {
                print('Flat按钮');
              });
            },
            child: Text('Flat按钮'),
            color: Colors.lightBlue,
          ),
          // 图标按钮
          RaisedButton.icon(
            onPressed: () {
              setState(() {
                print('点击按钮');
              });
            },
            icon: Icon(Icons.mail),
            label: Text('mail me'),
            color: Colors.amber,
          ),
          // 图标按钮
          IconButton(
            onPressed: () {
              setState(() {
                print('点击按钮');
              });
            },
            icon: Icon(Icons.mail),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
