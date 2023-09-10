import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/style.dart';

class paragraphWidget extends StatelessWidget {
  const paragraphWidget({
    super.key,
    required this.title,
    required this.paragraph,
  });

  final String title;
  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppConsts.subTitleTextStyle,
          ),
          Text(
            paragraph,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
