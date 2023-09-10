import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/routes.dart';
import '../../../consts/strings.dart';
import '../../../consts/style.dart';
import '../forgetPasswordPage/forgetPassword.dart';
import '../registerPage/registerPage.dart';
import '../../bottomNavBarHome/bottomNavBar.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/haveAccount.dart';

import '../../../widgets/customTextfield.dart';
import '../../../widgets/topComponentAuth.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  static String id = AppRoute.loginPageRoute;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const topComponentAuth(
                title: Strings.loginLabel,
                subTitle: Strings.newComing,
              ),
              SizedBox(height: height * .05.h),

              ///البريد الالكتروني
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: customTextField(
                  label: Strings.email,
                  onSubmit: (String) {},
                  onChange: (String) {},
                ),
              ),

              ///كلمة المرور
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: customTextField(
                  label: Strings.password,
                  onSubmit: (String) {},
                  onChange: (String) {},
                ),
              ),

              ///نسيت كلمة المرور
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil(
                          forgetPassPage.id, (route) => false),
                  child: const Text(Strings.forgetPasswordLabel),
                ),
              ),

              /// دخول
              customButton(
                label: Strings.enter,
                onTap: () => Navigator.of(context).pushNamed(bottomNavBar.id),
                backColor: AppConsts.mainColor,
                textStyle: AppConsts.boldTitleTextStyleWhite,
                borderColor: AppConsts.mainColor,
              ),
              SizedBox(height: height * .1.h),

              ///ليس لديك حساب
              haveAccount(
                label: Strings.notHaveAccount,
                labelButton: Strings.newAccount,
                onTap: () => Navigator.of(context).pushReplacementNamed(
                  registerPage.id,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
