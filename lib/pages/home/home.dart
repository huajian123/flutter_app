import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/common/values/values.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Widget _buildSearch() {
  return DefaultTextStyle(
    style: TextStyle(
      color: AppColors.placeholderColor
    ),
    child: Container(
      height: 70.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(10.0), color: Colors.black12),
      child: Stack(
        children: <Widget>[
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Baseline(
                  baseline: 48.h,
                  baselineType: TextBaseline.alphabetic,
                  child: Icon(Icons.search,color: AppColors.placeholderColor,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Text(
                    "静音无线鼠标",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10.w,
            height: 70.h,
            child: Icon(Icons.photo_camera,color: AppColors.placeholderColor,),
          )
        ],
      ),
    ),
  );
  /* child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(),
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.search),
                Text("静音无线鼠标"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.w),
            child:   Icon(Icons.camera_alt) ,
          )


        ],
      ));*/
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          width: double.infinity,
          //color: Colors.red,
          child: Column(
            children: <Widget>[
              _buildSearch(),
            ],
          ),
        ),
      ),
    );
  }
}
