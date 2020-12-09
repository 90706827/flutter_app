import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Home'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/one');
            },
            icon: Icon(Icons.edit_location),
            label: Text('Loading One'),
          ),
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/two');
            },
            icon: Icon(Icons.edit_location),
            label: Text('Loading Two'),
          ),
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/safeArea');
            },
            icon: Icon(Icons.edit_location),
            label: Text('Loading SafeArea'),
          )
        ],
      ),
    );
  }
}
