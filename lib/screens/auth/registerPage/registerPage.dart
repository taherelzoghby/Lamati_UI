import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/routes.dart';
import '../../../consts/strings.dart';
import '../../../consts/style.dart';
import '../loginPage/loginPage.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/customRadioButton.dart';
import '../../../widgets/haveAccount.dart';

import '../updatePage/updateProfile.dart';
import '../../../widgets/customTextfield.dart';
import '../../../widgets/topComponentAuth.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  static String id = AppRoute.registerPageRoute;

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  bool terms = false;
  bool isMen = false;
  bool isWomen = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const topComponentAuth(
                    title: Strings.newLogin,
                    subTitle: Strings.emptyString,
                  ),

                  ///الاسم
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    child: customTextField(
                      label: Strings.name,
                      onSubmit: (String) {},
                      onChange: (String) {},
                    ),
                  ),
                ],
              ),

              ///البريد الالكتروني
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 5.h,
                ),
                child: customTextField(
                  label: Strings.email,
                  onSubmit: (String) {},
                  onChange: (String) {},
                ),
              ),

              ///رقم الهاتف
              Padding(
                padding: AppConsts.customPadding,
                child: customTextField(
                  label: Strings.phone,
                  onSubmit: (String) {},
                  onChange: (String) {},
                ),
              ),

              ///men    or    women
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    customRadioButton(
                      label: Strings.women,
                      value: isWomen,
                      onTap: () => setState(() {
                        isWomen = !isWomen;
                        if (isMen == true) {
                          isMen = false;
                        }
                      }),
                    ),
                    SizedBox(width: width * .3.w),
                    customRadioButton(
                      label: Strings.men,
                      value: isMen,
                      onTap: () => setState(() {
                        isMen = !isMen;
                        if (isWomen == true) {
                          isWomen = false;
                        }
                      }),
                    ),
                  ],
                ),
              ),

              ///كلمة المرور
              Padding(
                padding: AppConsts.customPadding,
                child: customTextField(
                  label: Strings.password,
                  onSubmit: (String) {},
                  onChange: (String) {},
                ),
              ),

              ///تأكيد كلمة المرور
              Padding(
                padding: AppConsts.customPadding,
                child: customTextField(
                  label: Strings.surePassword,
                  onSubmit: (String) {},
                  onChange: (String) {},
                ),
              ),

              ///موافق علي الشروط و الاحكام
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: customRadioButton(
                  label: Strings.acceptTerms,
                  value: terms,
                  onTap: () => setState(() => terms = !terms),
                ),
              ),

              /// تسجيل
              customButton(
                label: Strings.newLogin,
                onTap: () => Navigator.of(context).pushReplacementNamed(
                  updateProfile.id,
                ),
                backColor: AppConsts.mainColor,
                textStyle: AppConsts.boldTitleTextStyleWhite,
                borderColor: AppConsts.mainColor,
              ),
              SizedBox(height: height * .02.h),

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
