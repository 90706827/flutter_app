import 'package:flutter/material.dart';
import 'package:flutter_app/basic/share/alligators_model.dart';
import 'package:share/share.dart';

class MyShare extends StatefulWidget {
  MyShare({Key key}) : super(key: key);

  @override
  _MyShareState createState() => _MyShareState();
}

class _MyShareState extends State<MyShare> {
  List<Alligator> alligator = [
    Alligator(
      name: "Crunchy",
      description: "A fierce Alligator with many teeth.",
    ),
    Alligator(
      name: "Munchy",
      description: "A fierce Alligator with many teeth.",
    ),
    Alligator(
      name: "Grunchy",
      description: "A fierce Alligator with many teeth.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favourite Alligators'),
      ),
      body: Column(
        children: alligator
            .map(
              (e) => Card(
                child: ListTile(
                  title: Text(e.name),
                  subtitle: Text(e.description),
                  onTap: () => share(context, e),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  void share(BuildContext context, Alligator alligator) async {
    final RenderBox box = context.findRenderObject();
    final String text = "${alligator.name} - ${alligator.description}";
    await Share.share(
      text,
      subject: alligator.description,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
     );
  }
}
