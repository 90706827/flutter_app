import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyImage extends Align {
  const MyImage({Key key}) : super(key: key);

  @override
  Widget get child => (Center(

        child:

            // 加载网络图片
            // Image(
            //   image: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3813707197,1954539734&fm=26&gp=0.jpg'),
            // ),
            // 图片本地图片
            Image(
          image: AssetImage('assets/images/Avril.jpg'),
        ),

      ));
}
