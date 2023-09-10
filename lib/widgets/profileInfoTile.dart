import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/style.dart';

class profileInfoTile extends StatelessWidget {
  const profileInfoTile({
    super.key,
    required this.label,
    required this.iconData,
    required this.onTap,
  });
  final String label;
  final IconData iconData;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 25.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              label,
              style: TextStyle(
                color: AppConsts.grey,
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
              ),
            ),
            Icon(
              iconData,
              color: AppConsts.grey,
              size: 35.sp,
            ),
          ],
        ),
      ),
    );
  }
}
