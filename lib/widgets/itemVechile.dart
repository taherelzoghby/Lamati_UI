import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/strings.dart';
import '../consts/style.dart';
import 'tileInItemVechile.dart';

class vechileItem extends StatelessWidget {
  const vechileItem({
    super.key,
    required this.image,
    required this.vechile,
    required this.model,
    required this.color,
    required this.onTap,
  });

  final String image;
  final String vechile;
  final String model;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(5.sp),
      child: Container(
        height: height * .17.h,
        width: width * .9.w,
        decoration: BoxDecoration(
          color: AppConsts.white,
          borderRadius: BorderRadius.circular(20.sp),
          boxShadow: AppConsts.shadows,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: IconButton(
                onPressed: onTap,
                icon: const Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                tileInItemVechile(ke_y: Strings.carType, value: vechile),
                tileInItemVechile(ke_y: Strings.carModel, value: model),
                tileInItemVechile(ke_y: Strings.carColor, color: color),
              ],
            ),
            SizedBox(
              height: height * .12.h,
              width: width * .3.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17.sp),
                child: Image.asset(
                  'assets/images/car.png',

                  ///not const
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: width * .02.w),
          ],
        ),
      ),
    );
  }
}
