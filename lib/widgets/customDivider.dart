import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';

class customDivider extends StatelessWidget {
  const customDivider({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Divider(
      color: AppConsts.grey,
      thickness: height * .002.h,
      indent: width * .1.w,
      endIndent: width * .1.w,
    );
  }
}
