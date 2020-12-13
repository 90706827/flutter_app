import 'package:flutter/material.dart';

class WatchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            print('WatchAppBar InkWell onTap');
          },
          child: Image.asset("static/images/menu.png"),
        ),
        Row(
          children: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('WatchAppBar InkWell search');
                }),
            CircleAvatar(
              backgroundImage: AssetImage("static/images/Avril.jpg"),
              radius: 13,
            )
          ],
        )
      ],
    );
  }
}
