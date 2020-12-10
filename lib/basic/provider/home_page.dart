import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ThemeChanger.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FlatButton(
                onPressed: () {
                  theme.setTheme(ThemeData.dark());
                },
                child: Text("Dark Theme")),
            FlatButton(
                onPressed: () {
                  theme.setTheme(ThemeData.light());
                },
                child: Text("Light Theme"))
          ],
        ),
      ),
    );
  }
}
