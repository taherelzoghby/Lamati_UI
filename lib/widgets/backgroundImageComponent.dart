import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts/appAssets.dart';

class backgroundImageComponent extends StatelessWidget {
  const backgroundImageComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * .28.h,
      width: width.w,
      child: SvgPicture.asset(
        AppAssets.backgroundImage2,
        fit: BoxFit.fill,
        height: height * .23.h,
      ),
    );
  }
}
