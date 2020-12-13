import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/basic/my_change_notifier.dart';
import 'package:flutter_app/basic/my_charts.dart';
import 'package:flutter_app/basic/my_form.dart';
import 'package:flutter_app/basic/my_material_banner.dart';
import 'package:flutter_app/basic/my_mobx.dart';
import 'package:flutter_app/basic/my_panorama.dart';
import 'package:flutter_app/basic/my_reorderable_list_view.dart';
import 'package:flutter_app/basic/my_share.dart';
import 'package:flutter_app/basic/my_speed_dial.dart';
import 'package:flutter_app/basic/my_text.dart';
import 'package:flutter_app/basic/my_theme.dart';
import 'package:flutter_app/basic/my_watch_list_page.dart';
import 'package:flutter_app/basic/my_web_veiw.dart';
import 'package:flutter_app/presentation/login_page.dart';
import 'package:flutter_app/presentation/user_service.dart';
import 'package:provider/provider.dart';

import 'basic/my_button.dart';
import 'basic/my_card.dart';
import 'basic/my_column.dart';
import 'basic/my_container.dart';
import 'basic/my_divider.dart';
import 'basic/my_expended.dart';
import 'basic/my_flutter_toast.dart';
import 'basic/my_http_request.dart';
import 'basic/my_icon.dart';
import 'basic/my_image.dart';
import 'basic/my_list.dart';
import 'basic/my_padding.dart';
import 'basic/my_row.dart';
import 'basic/page/my_page_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => UserService(),
        ),
      ],
      child: MaterialApp(
        title: 'zgc',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(
          title: 'Flutter Demo',
          routers: routers,
        ),
        routes: routers,
      ),
    );
  }

  static Map<String, WidgetBuilder> get routers => {
        "文本": (context) {
          return MyText();
        },
        "按钮": (context) {
          return MyButton();
        },
        "图标": (context) {
          return MyIcon();
        },
        "图片": (context) {
          return MyImage();
        },
        "行": (context) {
          return MyRow();
        },
        "列": (context) {
          return MyColumn();
        },
        "Padding": (context) {
          return MyPadding();
        },
        "Container": (context) {
          return MyContainer();
        },
        "弹性布局（Expanded）": (context) {
          return MyExpended();
        },
        '线条': (context) {
          return MyDivider();
        },
        '卡片': (context) {
          return MyCard();
        },
        '列表': (context) {
          return MyList();
        },
        '多页面': (context) {
          return MyPageRoutes();
        },
        'Http请求': (context) {
          return MyHttpRequest();
        },
        'Login 登录': (context) {
          return LoginPage();
        },
        '切换主题': (context) {
          return MyTheme();
        },
        '状态管理': (context) {
          return MyChangeNotifier();
        },
        'Mobx': (context) {
          return MyMobx();
        },
        '表单': (context) {
          return MyForm();
        },
        'WebView': (context) {
          return MyWebVeiw();
        },
        'SpeedDial': (context) {
          return MySpeedDial();
        },
        '图形(Charts)': (context) {
          return MyCharts();
        },
        'Share': (context) {
          return MyShare();
        },
        '全景图像': (context) {
          return MyPanorama();
        },
        'MaterialBanner': (context) {
          return MyMaterialBanner();
        },
        'FlutterToast': (context) {
          return MyFlutterToast();
        },
        '拖拽试图': (context) {
          return MyReorderableListView();
        },
        '手表效果图': (context) {
          return MyWatchListPage();
        }
      };
}
