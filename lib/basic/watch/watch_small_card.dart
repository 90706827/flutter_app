import 'package:flutter/material.dart';
import 'package:flutter_app/basic/watch/model/WatchListItem.dart';

class WatchSmallCard extends StatelessWidget {
  final WatchListItem watchListItem;

  WatchSmallCard({this.watchListItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: watchListItem.color,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      height: 250,
      child: Column(
        children: [
          Flexible(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned.fill(
                  child: Image.asset(
                    watchListItem.imageUrl,
                    width: 60,
                  ),
                  top: -10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Apple Watch 3",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "\$1880",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
