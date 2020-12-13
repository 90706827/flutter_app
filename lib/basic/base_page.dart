import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  BasePage({Key key, @required this.title, @required this.routers})
      : super(key: key);
  final String title;
  final Map<String, WidgetBuilder> routers;

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    var routeLists = widget.routers.keys.toList();
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
                  child: Text(widget.routers.keys.toList()[index]),
                ),
              ),
            );
          },
          itemCount: widget.routers.length,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        child: Text('动动'),
        onPressed: () {
          if (mounted) {
            setState(() {});
          }
        },
      ),
    );
  }
}
