import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/basic/mobx/counter_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MobxPage extends StatelessWidget {
  final Counter counter = Counter();
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Counter',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Observer(
                  builder: (_) => Text('${counter.count}',
                      style: TextStyle(fontSize: 40.0))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                    onPressed: () {
                      counter.increment();
                    },
                    icon: Icon(Icons.add),
                    label: Text("add")),
                FlatButton.icon(
                    onPressed: () {
                      counter.decrement();
                    },
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
