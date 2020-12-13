import 'package:flutter/material.dart';
import 'package:flutter_app/basic/charts/bar_chart.dart';

class MyCharts extends StatefulWidget {
  MyCharts({Key key}) : super(key: key);

  @override
  _MyChartsState createState() => _MyChartsState();
}

class _MyChartsState extends State<MyCharts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据图形"),
      ),
      body: Container(
        child: Column(
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BarChart()));
                },
                child: Text('柱状图'))
          ],
        ),
      ),
    );
  }
}
