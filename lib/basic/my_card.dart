import 'package:flutter/material.dart';
import 'package:flutter_app/basic/card/app_card.dart';

class MyCard extends StatefulWidget {
  MyCard({Key key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: AppCard(
                borderStyle: Border.all(color: Colors.red, width: 5.0),
                child: Column(
                  children: [
                    Text(
                      '至臻环保',
                      style: TextStyle(fontSize: 32.0),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: AppCard(
                borderStyle: Border.all(color: Colors.amber, width: 10.0),
                boxShadowColor: Colors.amberAccent,
                child: Column(
                  children: [
                    Text(
                      '至臻环保',
                      style: TextStyle(fontSize: 32.0),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: AppCard(
                boxShadowColor: Colors.red,
                child: Column(
                  children: [
                    Text(
                      '至臻环保',
                      style: TextStyle(fontSize: 32.0),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
