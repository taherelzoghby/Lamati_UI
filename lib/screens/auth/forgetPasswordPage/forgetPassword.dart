import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/routes.dart';
import '../../../consts/strings.dart';
import 'forgetPasswordPage2.dart';

import '../../../consts/style.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/customTextfield.dart';
import '../../../widgets/haveAccount.dart';
import '../../../widgets/topComponentAuth.dart';

import '../loginPage/loginPage.dart';

class forgetPassPage extends StatelessWidget {
  const forgetPassPage({super.key});

  static String id = AppRoute.forgetPasswordRoute;

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
                        Strings.hintPageForgetPassword,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    SizedBox(height: height * .02.h),

                    ///البريد الالكتروني
                    customTextField(
                      label: Strings.email,
                      onSubmit: (String) {},
                      onChange: (String) {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * .05.h),

              /// ارسال
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: customButton(
                  label: Strings.send,
                  onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    forgetPassPage2.id,
                    (route) => false,
                  ),
                  backColor: AppConsts.mainColor,
                  textStyle: AppConsts.boldTitleTextStyleWhite,
                  borderColor: AppConsts.mainColor,
                ),
              ),
              SizedBox(height: height * .25.h),

              /// لديك حساب
              haveAccount(
                label: Strings.haveAccount,
                labelButton: Strings.loginLabel,
                onTap: () => Navigator.of(context).pushReplacementNamed(
                  loginPage.id,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
