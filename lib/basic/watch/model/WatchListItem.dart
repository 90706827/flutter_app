import 'package:flutter/cupertino.dart';

class WatchListItem {
  final Key key;
  final Color color;
  final String imageUrl;
  bool shouldScale;

  WatchListItem({this.key, this.color, this.imageUrl, this.shouldScale});
}
