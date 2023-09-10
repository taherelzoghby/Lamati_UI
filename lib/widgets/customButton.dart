import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.backColor,
    required this.textStyle,
    this.icon,
    required this.borderColor,
  });

  final String label;
  final void Function() onTap;
  final Color backColor;
  final TextStyle textStyle;
  final Widget? icon;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * .07.h,
        width: width * .95.w,
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(13.sp),
          border: Border.all(
            color: borderColor,
            width: 2.w,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: textStyle,
              ),
              icon ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
