import 'package:flutter/material.dart';
import 'package:flutter_app/basic/webview/load_web_page.dart';

class MyWebVeiw extends StatefulWidget {
  MyWebVeiw({Key key}) : super(key: key);

  @override
  _MyWebVeiwState createState() => _MyWebVeiwState();
}

class _MyWebVeiwState extends State<MyWebVeiw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoadWebPage(title: 'Web View',)));
                },
                icon: Icon(Icons.desktop_windows),
                label: Text('网站加载')),
          )
        ],
      ),
    );
  }
}
