import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/home_page.dart';
import 'package:flutter_trip/pages/me_page.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => new _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = new PageController();
  int _currentIndex = 0;
  final MaterialColor _defaultColor = Colors.grey;
  final MaterialColor _activeColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          HomePage(),
          SearchPage(),
          TravelPage(),
          MePage(),
        ],
      ),
      drawer: Drawer(
        child: Text('测试抽屉'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0 ? _activeColor : _defaultColor,
              ),
              title: Text(
                '首页',
                style: TextStyle(
                    color: _currentIndex == 0 ? _activeColor : _defaultColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _currentIndex == 1 ? _activeColor : _defaultColor,
              ),
              title: Text(
                '搜索',
                style: TextStyle(
                    color: _currentIndex == 1 ? _activeColor : _defaultColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.trip_origin,
                color: _currentIndex == 2 ? _activeColor : _defaultColor,
              ),
              title: Text(
                '旅拍',
                style: TextStyle(
                    color: _currentIndex == 2 ? _activeColor : _defaultColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.portrait,
                color: _currentIndex == 3 ? _activeColor : _defaultColor,
              ),
              title: Text(
                '我的',
                style: TextStyle(
                    color: _currentIndex == 3 ? _activeColor : _defaultColor),
              ))
        ],
      ),
    );
  }
}
