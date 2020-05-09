import 'package:flutter/material.dart';
import 'package:flutterapp/pages/pages.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;
  List<Widget> pages = List<Widget>();
  List<BottomNavigationBarItem> bottomItem = List<BottomNavigationBarItem>();

  @override
  void initState() {
    super.initState();
    pages
      ..add(Home())
      ..add(Attention())
      ..add(Classification())
      ..add(Chat())
      ..add(PersonalCenter());

    pages.map((e) {});
  }

  BottomNavigationBarItem _buildBottomNavItem({Icon icon, Text text}) {
    return BottomNavigationBarItem(
      icon: icon,
      title: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          print("点击了");
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _buildBottomNavItem(icon: Icon(Icons.home), text: Text("首页")),
          _buildBottomNavItem(icon: Icon(Icons.access_alarm), text: Text("关注")),
          _buildBottomNavItem(icon: Icon(Icons.access_alarm), text: Text("分类")),
          _buildBottomNavItem(icon: Icon(Icons.access_alarm), text: Text("聊天")),
          _buildBottomNavItem(
              icon: Icon(Icons.access_alarm), text: Text("个人中心")),
        ],
      ),
    );
  }
}
