import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/routes.dart';
import '../../../consts/strings.dart';
import '../../../consts/style.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/haveAccount.dart';
import '../../../widgets/textField.dart';
import '../../../widgets/topComponentAuth.dart';

class confirmationCode extends StatelessWidget {
  const confirmationCode({super.key});

  static String id = AppRoute.confirmPageRoute;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const topComponentAuth(
              title: Strings.confirmCode,
              subTitle: Strings.emptyString,
            ),
            SizedBox(height: height * .15.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 5.h,
                  ),
                  child: const Text(
                    Strings.enterConfirmCode,
                    style: AppConsts.textLabelField,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: width * .04.w),
                    Expanded(
                      child: textField(
                        onSubmit: (v) {},
                        onChange: (v) {},
                        maxLength: 1,
                      ),
                    ),
                    SizedBox(width: width * .01.w),
                    Expanded(
                      child: textField(
                        onSubmit: (v) {},
                        onChange: (v) {},
                        maxLength: 1,
                      ),
                    ),
                    SizedBox(width: width * .01.w),
                    Expanded(
                      child: textField(
                        onSubmit: (v) {},
                        onChange: (v) {},
                        maxLength: 1,
                      ),
                    ),
                    SizedBox(width: width * .01.w),
                    Expanded(
                      child: textField(
                        onSubmit: (v) {},
                        onChange: (v) {},
                        maxLength: 1,
                      ),
                    ),
                    SizedBox(width: width * .04.w),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * .07.h),

            /// تأكيد
            customButton(
              label: Strings.sure,
              onTap: () {},
              backColor: AppConsts.mainColor,
              textStyle: AppConsts.boldTitleTextStyleWhite,
              borderColor: AppConsts.mainColor,
            ),
            SizedBox(height: height * .07.h),

            ///لم يتم ارسال الرمز
            haveAccount(
              label: Strings.codeDontArive,
              labelButton: Strings.newSend,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
