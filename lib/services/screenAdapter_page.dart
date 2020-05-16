import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
 *   屏幕适配
 *   ScreenAdapterPage 为 flutter_screenutil 中间层
 *   
 **/

class ScreenAdapterPage {
  //静态方法可以通过类直接访问
  //初始化器
  static init(context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
  }

  static height(double value) {
    return ScreenUtil.instance.setHeight(value);
  }

  static width(double value) {
    return ScreenUtil.instance.setWidth(value);
  }

  static getScreenHeight() {
    return ScreenUtil.screenHeightDp;
  }

  static getScreenWidth() {
    return ScreenUtil.screenWidthDp;
  }
}
