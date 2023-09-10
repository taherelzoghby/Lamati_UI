import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';

import '../consts/strings.dart';

class tileInItemVechile extends StatelessWidget {
  const tileInItemVechile({
    super.key,
    this.value = Strings.emptyString,
    required this.ke_y,
    this.color = Colors.lightBlue,
  });

  final String ke_y;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        value != Strings.emptyString
            ? SizedBox(
                width: width * .16.w,
                child: Text(
                  value,
                  style: AppConsts.textLabelField,
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            : Container(
                height: height * .02.h,
                width: width * .07.w,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(30.sp),
                ),
              ),
        SizedBox(
          width: width * .26.w,
          child: Text(
            ke_y,
            textAlign: TextAlign.end,
            style: AppConsts.textLabelField,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
