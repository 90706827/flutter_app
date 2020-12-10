import 'package:flutter/material.dart';
import 'package:flutter_app/basic/provider/home_page.dart';
import 'package:provider/provider.dart';

import 'ThemeChanger.dart';

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeChanger themeChanger = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      home: HomePage(),
      theme: themeChanger.getTheme(),
    );
  }
}
