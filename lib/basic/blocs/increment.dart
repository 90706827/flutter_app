import 'package:flutter/material.dart';
import 'package:flutter_app/basic/blocs/CounterBloc.dart';
import 'package:provider/provider.dart';

class Increment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return FlatButton.icon(
        onPressed: () {
          counterBloc.increment();
        },
        icon: Icon(Icons.add),
        label: Text("Add"));
  }
}
