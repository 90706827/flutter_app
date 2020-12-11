import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
//          图标按钮
          RaisedButton(
            onPressed: () {
              return Alert(
                context: context,
                title: "From",
                desc: "this is desc",
                content: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: "Username"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Password"),
                      )
                    ],
                  ),
                ),
                buttons: [
                  DialogButton(
                      child: Text('登录'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  DialogButton(
                      child: Text('注册'),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              ).show();
            },
            child: Text('弹框按钮'),
            color: Colors.lightBlue,
          ),
          // 图标按钮
          FlatButton(
            onPressed: () {
              return Alert(
                  context: context,
                  title: "Rfluter_alert",
                  desc: "this is a desc",
                  buttons: [
                    DialogButton(
                        child: Text('确定'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    DialogButton(
                        child: Text('取消'),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ]).show();
            },
            child: Text('Alert按钮'),
            color: Colors.lightBlue,
          ),
          // 图标按钮
          RaisedButton.icon(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.mail),
            label: Text('mail me'),
            color: Colors.amber,
          ),
          // 图标按钮
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.mail),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
