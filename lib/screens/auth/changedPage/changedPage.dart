import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/appAssets.dart';
import '../../../consts/routes.dart';
import '../../../consts/strings.dart';
import '../../../consts/style.dart';
import '../loginPage/loginPage.dart';

import '../../../widgets/backgroundImageComponent.dart';

class changedPage extends StatelessWidget {
  const changedPage({super.key});

  static const String id = AppRoute.changedPageRoute;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          ///backgroundImage
          const backgroundImageComponent(),
          SizedBox(height: height * .1.h),
          Image.asset(AppAssets.successChangedPasswordImage),
          SizedBox(height: height * .02.h),
          const Text(
            Strings.successChangedLabel,
            style: TextStyle(
              color: AppConsts.grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: height * .3.h),
          TextButton(
            onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              loginPage.id,
              (route) => false,
            ),
            child: Text(
              Strings.label,
              style: AppConsts.subTitleTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
