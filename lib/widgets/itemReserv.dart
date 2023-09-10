import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';
import 'date_time_tile.dart';

class itemReserv extends StatelessWidget {
  const itemReserv({
    super.key,
    required this.time,
    required this.date,
    required this.color,
    required this.car,
  });

  final String time;
  final String date;
  final Color color;
  final String car;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppConsts.white,
          borderRadius: BorderRadius.circular(10.sp),
          boxShadow: AppConsts.shadows,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            dateTimeItem(time: time, date: date),
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * .023.h,
                    width: width * .05.w,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  ),
                  Text(
                    car,
                    style: AppConsts.bodyTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
