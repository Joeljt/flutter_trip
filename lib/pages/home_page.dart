import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final String url = 'https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 300,
          child: Swiper(
              itemCount: 4,
              autoplay: true,
              itemBuilder: (BuildContext context, int index){
                return Image.network(url, fit: BoxFit.fill,);
              },
          ),
          margin: EdgeInsets.only(bottom: 100),
        ),
        Text('这是首页', style: TextStyle(),)
      ],
    );
  }
}