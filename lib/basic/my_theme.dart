import 'package:flutter/material.dart';
import 'package:flutter_app/basic/provider/ThemeChanger.dart';
import 'package:flutter_app/basic/provider/material_app_with_theme.dart';
import 'package:provider/provider.dart';

class MyTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: MaterialAppWithTheme(),
    );
  }
}
