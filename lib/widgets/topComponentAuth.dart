import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';
import 'backgroundImageComponent.dart';

class topComponentAuth extends StatelessWidget {
  const topComponentAuth({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ///backgroundImage
        const backgroundImageComponent(),

        ///title
        Positioned(
          top: height * .1.h,
          child: Center(
            child: SizedBox(
              width: width,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppConsts.bold1TitleTextStyle,
              ),
            ),
          ),
        ),

        ///مرحبا بك مجدد
        Positioned(
          top: height * .15.h,
          right: width * .24.w,
          left: width * .3.w,
          child: Center(
            child: Text(
              subTitle,
              style: AppConsts.subTitleTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
