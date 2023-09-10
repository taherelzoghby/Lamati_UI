import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';

class itemService extends StatelessWidget {
  const itemService({
    super.key,
    required this.price,
    required this.service,
  });

  final String price;
  final String service;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: Container(
        height: height * .1.h,
        width: width * .9.w,
        decoration: BoxDecoration(
          color: AppConsts.white,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///checkBox
            Container(
              height: height * .03.h,
              width: width * .07.w,
              decoration: BoxDecoration(
                color: AppConsts.white,
                borderRadius: BorderRadius.circular(20.sp),
                border: Border.all(
                  width: 2.w,
                  color: AppConsts.mainColor,
                ),
              ),
            ),

            ///price
            Text(
              price,
              style: AppConsts.bold1TitleTextStyle,
            ),

            ///service
            Text(
              service,
              style: AppConsts.subTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
