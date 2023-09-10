import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/strings.dart';
import '../../../consts/style.dart';
import '../../../widgets/customButton.dart';

import '../changedPage/changedPage.dart';
import '../../../widgets/customTextfield.dart';
import '../../../widgets/topComponentAuth.dart';

class forgetPassPage2 extends StatelessWidget {
  const forgetPassPage2({super.key});

  static String id = '/forgetPasswordPage2';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const topComponentAuth(
                title: Strings.forgetPasswordLabel,
                subTitle: Strings.emptyString,
              ),
              SizedBox(height: height * .04.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 5.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ///hint
                    SizedBox(
                      width: width * .8.w,
                      child: const Text(
                        Strings.hintPageForgetPassword2,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    SizedBox(height: height * .02.h),

                    ///كلمة المرور الجديده
                    customTextField(
                      label: Strings.newPassword,
                      onSubmit: (String) {},
                      onChange: (String) {},
                    ),
                    SizedBox(height: height * .02.h),

                    ///كلمة المرور مره اخري
                    customTextField(
                      label: Strings.othernewPassword,
                      onSubmit: (String) {},
                      onChange: (String) {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * .05.h),

              /// تغير
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: customButton(
                  label: Strings.change,
                  onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      changedPage.id, (route) => false),
                  backColor: AppConsts.mainColor,
                  textStyle: AppConsts.boldTitleTextStyleWhite,
                  borderColor: AppConsts.mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
