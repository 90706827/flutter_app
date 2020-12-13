import 'package:flutter/material.dart';
import 'package:flutter_app/basic/base_page.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/tab/search_page.dart';
import 'package:flutter_app/tab/shop_page.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: BasePage(
            title: 'Flutter Demo',
            routers: MyApp.routers,
          ),
          title: '主页',
          icon: Icon(Icons.home),
        ),
        TabNavigationItem(
          page: ShopPage(),
          title: '购物',
          icon: Icon(Icons.shopping_cart_outlined),
        ),
        TabNavigationItem(
          page: SearchPage(),
          title: '搜索',
          icon: Icon(Icons.search),
        ),
      ];
}
