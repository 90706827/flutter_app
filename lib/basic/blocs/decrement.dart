import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CounterBloc.dart';

class Decrement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return FlatButton.icon(
        onPressed: () {
          counterBloc.increment();
        },
        icon: Icon(Icons.add),
        label: Text("Remove"));
  }
}
