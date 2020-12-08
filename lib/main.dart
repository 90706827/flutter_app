import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'basic/my_button.dart';
import 'basic/my_column.dart';
import 'basic/my_container.dart';
import 'basic/my_expended.dart';
import 'basic/my_icon.dart';
import 'basic/my_image.dart';
import 'basic/my_padding.dart';
import 'basic/my_row.dart';
import 'basic/my_text.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  // Use the default LogFilter (-> only log in debug mode)
  filter: null,
  // Use the PrettyPrinter to format and print log
  printer:PrettyPrinter(
      methodCount: 2, // number of method calls to be displayed
      errorMethodCount: 8, // number of method calls if stacktrace is provided
      lineLength: 120, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      printTime: true // Should each log print contain a timestamp
  ),
  // Use the default LogOutput (-> send everything to console)
  output: null,
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);
void main() {
  logger.d("message");
  runApp(MyApp());
  //日志处理
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   reportErrorAndLog(details);
  // };
  // runZoned(
  //   () => runApp(MyApp()),
  //   zoneSpecification: ZoneSpecification(
  //     print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
  //       // 收集日志
  //       collectLog(line);
  //     },
  //   ),
  //   onError: (Object obj, StackTrace stack) {
  //     var details = makeDetails(obj, stack);
  //     reportErrorAndLog(details);
  //   },
  // );
}

void collectLog(String line) {
  //收集日志
  print('Error: $line');
}

void reportErrorAndLog(FlutterErrorDetails details) {
  //上报错误和日志逻辑
  print('FlutterErrorDetails $details');
}

FlutterErrorDetails makeDetails(Object obj, StackTrace stack) {
  print('makeDetails, $obj, $stack');
  // 构建错误信息
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

// [isWriteFile] can null,if you want to write log set to true,default false.
// [tag] can null.default RLogger.
// [filePath] not null your file path.
// [fileName] can null. default yyyy_MM_dd.
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
                      if(mounted){
                        setState(() {
                          logger.d('Log message with 2 methods');
                          loggerNoStack.i('Info message');
                          loggerNoStack.w('Just a warning!');
                          logger.e('Error! Something bad happened', 'Test Error');
                          loggerNoStack.v({'key': 5, 'value': 'something'});
                          Logger(printer: SimplePrinter(colors: true)).v('boom');
                          debugPrint('点击按钮');
                        });
                      }
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
