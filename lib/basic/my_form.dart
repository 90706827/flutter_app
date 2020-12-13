import 'package:flutter/material.dart';
import 'package:flutter_app/basic/form/ver_form.dart';
import 'package:flutter_app/basic/stepper/account_page.dart';

class MyForm extends StatefulWidget {
  MyForm({Key key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
              color: Colors.amber,
              child: Text('stepper表单'),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => VerForm()));
            },
            color: Colors.amber,
            child: Text('验证表单'),
          ),
        ],
      ),
    );
  }
}
