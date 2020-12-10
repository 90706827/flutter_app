import 'package:flutter/material.dart';
import 'package:flutter_app/basic/blocs/CounterBloc.dart';
import 'package:flutter_app/basic/blocs/counter_page.dart';
import 'package:provider/provider.dart';

class MyChangeNotifier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: CounterPage(),
    );
  }
}
