import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/common/utils/color_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartDev extends StatefulWidget {
  @override
  _StartDevState createState() => _StartDevState();
}

class _StartDevState extends State<StartDev> {
  Timer _timer;
  int _count = 3; //倒计时秒数

  _initTimer() {
    // 倒计时
    _timer = Timer.periodic(new Duration(seconds: 1), (timer) {
      setState(() {
        if (_count <= 1) {
          _timer.cancel();
          _timer = null;
          print("已经结束");
        } else {
          _count = _count - 1;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  _goMain() {
    print("进入业务页面");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage("assets/images/start_bg.png"),
              fit: BoxFit.fill,
            ),
// child: Image.asset("assets/images/start_bg.png"),
          ),
          Positioned(
            top: 70.h,
            right: 70.w,
            child: GestureDetector(
              onTap: (){
                print("点击跳过了");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsUtil.hexColor(0x2f3542,alpha: 0.2),

                  borderRadius: new BorderRadius.circular(20.0)
                ),
                width: 160.w,
                height: 60.h,
                child: Center(
                  child: Text(
                    "跳过广告 " + _count.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
