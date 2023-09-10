import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/strings.dart';
import '../consts/style.dart';
import 'date_time_tile.dart';
import 'tileServicePrice.dart';

import 'tileInItemVechile.dart';

class alertDetailsResrv extends StatelessWidget {
  const alertDetailsResrv({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ),
                ),
                Text(
                  Strings.details,
                  style: AppConsts.subTitleTextStyle,
                )
              ],
            ),
            Divider(height: height * .08.h, color: AppConsts.mainColor),

            ///about car
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    dateTimeItem(
                      time: '9:00 am',

                      ///not const
                      date: '20-9-2020',

                      ///not const
                    ),
                    tileInItemVechile(
                      ke_y: Strings.carType,
                      value: 'فيراري',

                      ///not const
                    ),
                    tileInItemVechile(
                      ke_y: Strings.carModel,
                      value: '2020 auto',

                      ///not const
                    ),
                    tileInItemVechile(
                      ke_y: Strings.carColor,
                      color: AppConsts.mainColor,
                    ),
                  ],
                ),
                SizedBox(width: width * .01.w),
                SizedBox(
                  height: height * .12.h,
                  width: width * .3.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.sp),
                    child: Image.asset(
                      'assets/images/car.png',

                      ///not const
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: height * .08.h, color: AppConsts.grey),
            tileServicePrice(
              value: Strings.services,
              kkey: Strings.total1,
              style: AppConsts.subTitleTextStyle,
            ),
            SizedBox(height: height * .01.h),
            const tileServicePrice(
              value: '50 ريال',

              ///not const
              kkey: Strings.normalWashing,
              style: AppConsts.textLabelField,
            ),
            SizedBox(height: height * .01.h),
            const tileServicePrice(
              value: '50 ريال',

              ///not const
              kkey: Strings.perfume,
              style: AppConsts.textLabelField,
            ),
            SizedBox(height: height * .01.h),
            const tileServicePrice(
              value: '55 ريال',

              ///not const
              kkey: Strings.valueAdded,
              style: AppConsts.textLabelField,
            ),
            SizedBox(height: height * .01.h),
            const tileServicePrice(
              value: '5 ريال',

              ///not const
              kkey: Strings.total,
              style: AppConsts.textLabelField,
            ),
            SizedBox(height: height * .01.h),
          ],
        ),
      ),
    );
  }
}
