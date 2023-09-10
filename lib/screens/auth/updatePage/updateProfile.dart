import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/appAssets.dart';
import '../../../consts/routes.dart';
import '../../../consts/strings.dart';
import '../../homePage/homePage.dart';
import '../../../widgets/customButtonEdit.dart';

import '../../../consts/style.dart';
import '../../../widgets/backgroundImageComponent.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/customTextfield.dart';

class updateProfile extends StatelessWidget {
  const updateProfile({super.key});

  static String id = AppRoute.updatePageRoute;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              ///photo
              Stack(
                children: [
                  ///backGround
                  const backgroundImageComponent(),

                  ///photo
                  Positioned(
                    top: height * .11.h,
                    width: width,
                    child: Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                const AssetImage(AppAssets.personImage),
                            radius: 70.sp,
                          ),
                          Positioned(
                            bottom: 0.h,
                            right: 0.w,
                            child: customButtonEdit(
                              widget: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * .05.h),

              ///الاسم
              Padding(
                padding: AppConsts.customPadding,
                child: customTextField(
                  label: Strings.name,
                  onSubmit: (String) {},
                  onChange: (String) {},
                ),
              ),

              ///البريد الالكتروني
              Padding(
                padding: AppConsts.customPadding,
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
              SizedBox(height: height * .05.h),

              /// تحديث
              customButton(
                label: Strings.update,
                onTap: () => Navigator.of(context).pushReplacementNamed(
                  homePage.id,
                ),
                backColor: AppConsts.mainColor,
                textStyle: AppConsts.boldTitleTextStyleWhite,
                borderColor: AppConsts.mainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
