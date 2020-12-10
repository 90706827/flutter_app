import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData themeData;

  ThemeChanger(this.themeData);

  getTheme() => themeData;

  setTheme(ThemeData theme) {
    this.themeData = theme;
    // 修改值时 通知监听
    notifyListeners();
  }
}
