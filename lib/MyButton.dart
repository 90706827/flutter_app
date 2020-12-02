import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends Align {
  const MyButton({Key key}) : super(key: key);

  @override
  Widget get child => (Center(
    child:
    // Icon(
    //   Icons.airport_shuttle,
    //   color: Colors.deepOrange,
    //   size: 50,
    // ),
    //图标按钮
    // RaisedButton(
    //   onPressed: (){
    //     print('Raised按钮');
    //   },
    //   child: Text('点击我'),
    //   color: Colors.lightBlue,
    // ),
    //图标按钮
    // FlatButton(
    //   onPressed: (){
    //     print('Flat按钮');
    //   },
    //   child: Text('点击我'),
    //   color: Colors.lightBlue,
    // ),
    //图标按钮
    //         RaisedButton.icon(
    //   onPressed: () {
    //     print('图标按钮');
    //   },
    //   icon: Icon(Icons.mail),
    //   label: Text('mail me'),
    //   color: Colors.amber,
    // ),
    //图标按钮
    IconButton(
      onPressed: (){
              print('图标按钮');
             },
      icon: Icon(Icons.mail),
      color: Colors.amber,
    ),
  ));
}
