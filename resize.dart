import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

  buildSetSp(double fontSizeValue) => ScreenUtil.instance.setSp(fontSizeValue);

  buildSetHeight(double heightValue) => ScreenUtil.instance.setHeight(heightValue);

  buildSetWidth(double widthValue) => ScreenUtil.instance.setWidth(widthValue);
  void reSize(BuildContext context){
    double defaultScreenWidth = 1600.0;
    double defaultScreenHeight = 2560.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);
  }
  class SpacePadding extends StatelessWidget {
  final double vpadding;
  final Widget child;
  final double hpadding;
  SpacePadding({@required this.child, this.vpadding = 16, this.hpadding = 7});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: EdgeInsets.symmetric(vertical: vpadding, horizontal: hpadding),
    );
  }
}