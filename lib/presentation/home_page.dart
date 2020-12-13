import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'GreetingService.dart';

class HomePage extends StatelessWidget {
  static Route<dynamic> route() =>
      MaterialPageRoute(
        builder: (BuildContext context) => HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text(
          Provider
              .of<GreetingService>(context)
              .greeting,
        ),
      ),
    );
  }
}
