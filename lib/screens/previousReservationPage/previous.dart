import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../consts/appAssets.dart';
import '../../consts/strings.dart';
import '../../consts/style.dart';

class previousPage extends StatelessWidget {
  const previousPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * .2.h),
        SvgPicture.asset(AppAssets.sorryImage),
        SizedBox(height: height * .02.h),
        Text(
          Strings.noReservation,
          style: TextStyle(
            color: AppConsts.grey,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
      ],
    );
  }
}
