import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;
  List<Widget> pages=List<Widget>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("123"),
    );
  }
}
