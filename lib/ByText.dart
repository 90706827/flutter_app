import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyText extends Align {
  const MyText({Key key}) : super(key: key);

  @override
  Widget get child => (Center(
        child: Text(
          "中关村至臻环保",
          style: TextStyle(
            fontFamily: 'Sans',
            letterSpacing: 5,
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
          ),
        ),
      ));
}
