import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConsts {
  static const Color backgroundPage = Color.fromRGBO(249, 249, 249, 1);
  static const Color white = Colors.white;
  static const Color mainColor = Color.fromRGBO(11, 63, 168, 1);
  static const Color emptyFilledColor = Color.fromRGBO(225, 230, 241, 1);
  static const Color inputBorderColor = Color.fromRGBO(197, 212, 245, 1);
  static const Color textFieldSearchColor = Color.fromRGBO(197, 212, 245, 1);
  static const Color grey = Color.fromRGBO(100, 100, 100, 1);
  static const Color initialColor = Colors.grey;
  static const Color black = Colors.black;
  static const Color starColor = Colors.orange;
  static TextStyle titleTextStyle = TextStyle(
    color: white,
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
  );
  static TextStyle bold1TitleTextStyle = TextStyle(
    color: mainColor,
    fontWeight: FontWeight.w900,
    fontSize: 22.sp,
  );
  static TextStyle bold2TitleTextStyle = TextStyle(
    color: mainColor,
    fontWeight: FontWeight.w700,
    fontSize: 21.sp,
  );
  static TextStyle boldTitleTextStyleWhite = TextStyle(
    color: white,
    fontWeight: FontWeight.w800,
    fontSize: 21.sp,
  );
  static TextStyle subTitleTextStyleWhite = TextStyle(
    color: white,
    fontWeight: FontWeight.w500,
    fontSize: 19.sp,
  );
  static TextStyle subTitleTextStyle = TextStyle(
    color: mainColor,
    fontWeight: FontWeight.w600,
    fontSize: 19.sp,
  );
  static TextStyle subTitleTextStyleBlack = TextStyle(
    color: black,
    fontWeight: FontWeight.w600,
    fontSize: 17.sp,
  );
  static OutlineInputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
      color: inputBorderColor,
      width: 2.w,
    ),
  );
  static OutlineInputBorder inputBorderSearch = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.sp),
    borderSide: BorderSide(
      color: textFieldSearchColor,
      width: 2.w,
    ),
  );
  static const TextStyle textLabelField = TextStyle(
    fontWeight: FontWeight.bold,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    color: mainColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headStyle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 20.sp,
    color: black,
  );
  static TextStyle bodyRed = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 17.sp,
    color: Colors.red,
  );
  static List<BoxShadow> shadows = [
    BoxShadow(
      color: AppConsts.mainColor.withOpacity(.2),
      blurRadius: 5.sp,
      spreadRadius: 0.001,
    ),
  ];
  static EdgeInsets customPadding = EdgeInsets.symmetric(
    horizontal: 10.w,
    vertical: 5.h,
  );
}
