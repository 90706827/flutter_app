import 'package:flutter/material.dart';

class MyMaterialBanner extends StatefulWidget {
  MyMaterialBanner({Key key}) : super(key: key);

  @override
  _MyMaterialBannerState createState() => _MyMaterialBannerState();
}

class _MyMaterialBannerState extends State<MyMaterialBanner> {
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  bool shouldShowBanner = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialBanner'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (shouldShowBanner)
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.indigo,
              leading: Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              contentTextStyle: whiteText,
              content: Text(
                "Your card has expired. Update your credit card information.",
              ),
              leadingPadding: EdgeInsets.all(10),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    "UPDATE",
                    style: whiteText,
                  ),
                  onPressed: _hideBanner,
                ),
                FlatButton(
                  child: Text(
                    "DISMISS",
                    style: whiteText,
                  ),
                  onPressed: _shouBanner,
                ),
              ],
            )
        ],
      ),
    );
  }

  void _hideBanner() {
    setState(() => shouldShowBanner = false);
  }

  void _shouBanner() {
    setState(() => shouldShowBanner = true);
  }
}
