import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/style.dart';
import 'customDivider.dart';

class notifiComponent extends StatelessWidget {
  const notifiComponent({
    super.key,
    required this.title,
    required this.body,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppConsts.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        Text(body, textDirection: TextDirection.rtl),
        const customDivider(),
      ],
    );
  }
}
