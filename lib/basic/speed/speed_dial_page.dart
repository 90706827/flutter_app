import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialPage extends StatefulWidget {
  SpeedDialPage({Key key}) : super(key: key);

  @override
  _SpeedDialPageState createState() => _SpeedDialPageState();
}

class _SpeedDialPageState extends State<SpeedDialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seep Dial'),
      ),
      body: Center(
        child: Text('Seep Dial Demo'),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        closeManually: true,
        child: Icon(Icons.account_box),
        onOpen: ()=>print('open'),
        onClose: ()=> print('close'),
        overlayColor: Colors.amber,
        overlayOpacity: 0.2,
        curve: Curves.easeIn,
        children: [
          SpeedDialChild(
              child: Icon(Icons.ac_unit),
              label: 'First',
              onTap: () => print('first')),
          SpeedDialChild(
              child: Icon(Icons.accessibility_new),
              label: 'Second',
              onTap: () => print('first')),
          SpeedDialChild(
              child: Icon(Icons.access_alarm),
              label: 'Third',
              onTap: () => print('first')),
        ],
      ),
    );
  }
}
