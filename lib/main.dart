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
      debugShowCheckedModeBanner: false,
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
  var routeLists = routers.keys.toList();

  @override
  void initState() {
    super.initState();
    startHome();
  }

  //显示2秒后跳转到HomeTabPage
  startHome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
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
                  ),
                  // This trailing comma makes auto-formatting nicer for build methods.
                  floatingActionButton: FloatingActionButton(
                    child: Text('动动'),
                    onPressed: () {
                      print('点击按钮');
                    },
                  ),
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "static/images/Avril.jpg",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
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
