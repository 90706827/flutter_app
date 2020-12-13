import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  final VoidCallback onCountSelected;
  final Function(int) onCountChange;

  Count({
    @required this.count,
    @required this.onCountChange,
    this.onCountSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => onCountChange(1),
        ),
        FlatButton(
          onPressed: () => {},
          child: Text('$count'),
        ),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () => onCountChange(-1),
        ),
      ],
    );
  }
}
