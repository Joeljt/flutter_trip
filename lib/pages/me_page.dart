import 'package:flutter/material.dart';

class MePage extends StatefulWidget{
  @override
  _MePageState createState() => new _MePageState();
}

class _MePageState extends State<MePage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('这是我的'),
    );
  }
}