import 'package:flutter/material.dart';
import 'package:flutter_app/basic/provider/ThemeChanger.dart';
import 'package:provider/provider.dart';

class MyTheme extends StatelessWidget {
  MyTheme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        builder: ThemeChanger(ThemeData.dark()),
        child: MaterialAppWithTheme(),
      )
    ]);
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger theme = Provider.of<ThemeChanger>(context);
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
