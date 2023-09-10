import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/style.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * .06.h,
      child: SizedBox(
        width: width.w,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: onTap,
              icon: const Icon(Icons.arrow_back),
            ),
            const Spacer(flex: 10),
            Text(
              title,
              style: AppConsts.bold1TitleTextStyle,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
