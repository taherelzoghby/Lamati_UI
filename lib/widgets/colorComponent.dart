import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class colorComponent extends StatelessWidget {
  const colorComponent({
    super.key,
    required this.color,
    required this.onTap,
  });

  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.sp),
        onTap: onTap,
        child: Container(
          height: height * .025.h,
          width: width * .2.w,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.sp),
          ),
        ),
      ),
    );
  }
}
