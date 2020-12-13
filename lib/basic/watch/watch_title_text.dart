import 'package:flutter/material.dart';

class WatchTitleText extends StatefulWidget {
  final String title;

  WatchTitleText({Key key, this.title}) : super(key: key);

  @override
  _WatchTitleTextState createState() => _WatchTitleTextState();
}

class _WatchTitleTextState extends State<WatchTitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.8,
      ),
    );
  }
}
