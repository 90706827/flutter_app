import 'package:flutter/material.dart';
import 'package:flutter_app/basic/blocs/CounterBloc.dart';
import 'package:flutter_app/basic/blocs/decrement.dart';
import 'package:flutter_app/basic/blocs/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              '${counterBloc.counter}',
              style: TextStyle(fontSize: 62.0),
            )),
            Increment(),
            Decrement(),
          ],
        )),
      ),
    );
  }
}
