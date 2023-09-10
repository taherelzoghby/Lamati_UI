import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customButtonEdit extends StatelessWidget {
  const customButtonEdit({
    super.key,
    required this.widget,
    required this.onTap,
  });
  final Widget widget;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height * .04.h,
        width: size.width * .09.w,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Center(child: widget),
      ),
    );
  }
}
