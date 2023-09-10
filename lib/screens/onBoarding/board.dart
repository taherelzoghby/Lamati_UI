import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/style.dart';

class boardStructure extends StatelessWidget {
  const boardStructure({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          SizedBox(height: height * .15.h),
          SizedBox(
            height: height * .3.h,
            width: width * .8.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: height * .13.h),
          Text(
            title,
            style: AppConsts.titleTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
