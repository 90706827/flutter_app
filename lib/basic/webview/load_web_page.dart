import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoadWebPage extends StatefulWidget {
  final String title;

  LoadWebPage({Key key, this.title}) : super(key: key);

  @override
  _LoadWebPageState createState() => _LoadWebPageState();
}

class _LoadWebPageState extends State<LoadWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: "https://www.baidu.com/",
          javascriptMode: JavascriptMode.unrestricted,
        );
      }),
    );
  }
}
