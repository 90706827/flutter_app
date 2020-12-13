import 'package:flutter/material.dart';
import 'package:flutter_app/basic/watch/model/BrandItem.dart';
import 'package:flutter_app/basic/watch/model/WatchListItem.dart';
import 'package:flutter_app/basic/watch/watch_app_bar.dart';
import 'package:flutter_app/basic/watch/watch_brand_selector.dart';
import 'package:flutter_app/basic/watch/watch_card_list.dart';
import 'package:flutter_app/basic/watch/watch_small_card.dart';
import 'package:flutter_app/basic/watch/watch_sub_title_text.dart';
import 'package:flutter_app/basic/watch/watch_title_text.dart';

class MyWatchListPage extends StatefulWidget {
  MyWatchListPage({Key key}) : super(key: key);

  @override
  _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  List<BrandItem> _brands;
  List<WatchListItem> _topListItems;
  List<WatchListItem> _bottomListItems;

  @override
  void initState() {
    super.initState();
    final String _watchImageUrl = "static/images/watch.png";
    _brands = [
      BrandItem(name: "Apple", isActive: true),
      BrandItem(name: "Samsung", isActive: false),
      BrandItem(name: "Xiaomi", isActive: false),
      BrandItem(name: "Asus", isActive: false)
    ];

    _topListItems = [
      WatchListItem(
        key: Key("one"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1FD0D4),
        shouldScale: true,
      ),
      WatchListItem(
        key: Key("two"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1FD2A7),
        shouldScale: false,
      ),
      WatchListItem(
        key: Key("three"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1EAFCA),
        shouldScale: false,
      ),
    ];
    _bottomListItems = [
      WatchListItem(
        key: Key("bottom_one"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF22ccd1),
        shouldScale: false,
      ),
      WatchListItem(
        key: Key("bottom_two"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1EAFCA),
        shouldScale: false,
      ),
      WatchListItem(
        key: Key("bottom_three"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1FD2A7),
        shouldScale: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WatchAppBar(),
                SizedBox(
                  height: 10,
                ),
                WatchTitleText(title: 'Discover'),
                SizedBox(
                  height: 24,
                ),
                WatchBrandSelector(
                  brands: _brands,
                ),
                SizedBox(
                  height: 20,
                ),
                WatchCardList(
                  listItems: _topListItems,
                ),
                SizedBox(
                  height: 20,
                ),
                WatchSubTitleText("Discount Offer"),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 210,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _bottomListItems.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.all(8),
                      child: WatchSmallCard(
                          watchListItem: _bottomListItems[index]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
