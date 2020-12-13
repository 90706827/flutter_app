import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_app/basic/charts/SubscriberServis.dart';
import 'package:flutter_app/basic/charts/subscriber_chart.dart';

class BarChart extends StatefulWidget {
  BarChart({Key key}) : super(key: key);

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  final List<SubscriberSeries> data = [
    SubscriberSeries(
        year: "2008",
        subscribers: 10000000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: "2009",
        subscribers: 12000000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: "2010",
        subscribers: 14000000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: "2011",
        subscribers: 16000000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: "2012",
        subscribers: 17000000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: "2013",
        subscribers: 16000000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: "2014",
        subscribers: 9000000,
        barColor: charts.ColorUtil.fromDartColor(Colors.red)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据展示"),
      ),
      body: Center(
        child: SubscriberChart(
          data: data,
        ),
      ),
    );
  }
}
