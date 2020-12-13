import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/basic/mobx/count.dart';
import 'package:flutter_app/basic/mobx/counter_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MobxPage extends StatefulWidget {
  MobxPage({Key key}) : super(key: key);

  @override
  _MobxPageState createState() => _MobxPageState();
}

class _MobxPageState extends State<MobxPage> {
  final Counter counter = Counter();
  int count = 1;

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
                'Mobx实现',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: Icon(Icons.add),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Observer(
                    builder: (_) => Text('${counter.count}',
                        style: TextStyle(fontSize: 20.0)),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            Divider(
              height: 20,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '使用VoidCallback和Function(x)通讯实现',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Count(
                count: count,
                onCountChange: (int val) => setState(() => count += val),
              ),
            )
          ],
        ),
      ),
    );
  }
}
