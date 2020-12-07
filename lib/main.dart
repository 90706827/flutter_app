import 'package:flutter/material.dart';
import 'package:flutter_app/basic/my_image.dart';

import 'file:///D:/dartProjects/flutter_app/lib/basic/my_button.dart';
import 'file:///D:/dartProjects/flutter_app/lib/basic/my_column.dart';
import 'file:///D:/dartProjects/flutter_app/lib/basic/my_container.dart';
import 'file:///D:/dartProjects/flutter_app/lib/basic/my_icon.dart';
import 'file:///D:/dartProjects/flutter_app/lib/basic/my_padding.dart';
import 'file:///D:/dartProjects/flutter_app/lib/basic/my_row.dart';
import 'file:///D:/dartProjects/flutter_app/lib/basic/my_text.dart';

import 'basic/my_expended.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'zgcenv',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      // home: SliverTabDemoPage2(),
      // home: new Home(title: '中关村至臻环保股份有限公司'),
      home: MyHomePage(
        title: 'Flutter Demo',
      ),
      routes: routers,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var routeLists = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeLists[index]);
              },
              child: new Card(
                child: new Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: Text(routers.keys.toList()[index]),
                ),
              ),
            );
          },
          itemCount: routers.length,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton(
        child: Text('动动'),
        onPressed: () {
          print('点击按钮');
        },
      ),
    );
  }
}

Map<String, WidgetBuilder> routers = {
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
  }
};
