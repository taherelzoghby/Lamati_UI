import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/strings.dart';

class alert_dialog extends StatelessWidget {
  const alert_dialog({
    super.key,
    this.image = Strings.emptyString,
    required this.content,
    this.subTitle = Strings.emptyString,
    required this.color,
    required this.widget,
  });

  final String image;
  final String content;
  final Color color;
  final String subTitle;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AlertDialog(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      content: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///cancel
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.cancel,
                  color: color,
                  size: 30.sp,
                ),
              ),
            ),

            ///image
            image.isEmpty
                ? Container(height: height * .1.h)
                : Image.asset(image),
            SizedBox(height: height * .02.h),

            ///text
            SizedBox(
              width: width * .9.w,
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: color,
                  fontSize: 18.sp,
                ),
              ),
            ),

            ///subTitle
            Text(
              subTitle.isEmpty ? Strings.emptyString : subTitle,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: color,
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ),
      actions: [widget],
    );
  }
}
