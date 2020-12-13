import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class MyPanorama extends StatefulWidget {
  MyPanorama({Key key}) : super(key: key);

  @override
  _MyPanoramaState createState() => _MyPanoramaState();
}

class _MyPanoramaState extends State<MyPanorama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('全景图像'),
      ),
      body: Center(
        child: Panorama(
          zoom: 0.5,
          child: Image.asset('static/images/panorama.webp'),
        ),
      ),
    );
  }
}
