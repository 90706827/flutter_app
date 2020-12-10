import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter and Mobx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: TextStyle(fontSize: 30.0),
            ),
            Text('0', style: TextStyle(fontSize: 40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("add")),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    label: Text("Minus")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
