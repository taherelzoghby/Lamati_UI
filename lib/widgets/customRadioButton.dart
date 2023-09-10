import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';

class customRadioButton extends StatelessWidget {
  const customRadioButton(
      {super.key,
      required this.label,
      required this.value,
      required this.onTap});

  final String label;
  final bool? value;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          label,
          style: AppConsts.textLabelField,
        ),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              height: height * .025.h,
              width: width * .056.w,
              decoration: BoxDecoration(
                color: value!
                    ? AppConsts.mainColor.withOpacity(.5)
                    : AppConsts.emptyFilledColor,
                borderRadius: BorderRadius.circular(30.sp),
                border:
                    Border.all(color: AppConsts.inputBorderColor, width: 2.w),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
