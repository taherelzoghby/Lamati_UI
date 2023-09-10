import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/appAssets.dart';
import '../../consts/routes.dart';
import '../../consts/strings.dart';

import '../bottomNavBarHome/bottomNavBar.dart';
import '../../widgets/alertDialog.dart';
import '../../widgets/customButton.dart';
import '../../consts/style.dart';
import '../../widgets/backgroundImageComponent.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/date_time_tile.dart';
import '../../widgets/tileInItemVechile.dart';
import '../../widgets/tileServicePrice.dart';

class detailsPage extends StatelessWidget {
  const detailsPage({super.key});

  static String id = AppRoute.detailsPageRoute;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Stack(
                children: [
                  const backgroundImageComponent(),

                  ///appBar
                  customAppBar(
                    title: Strings.details,
                    onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      bottomNavBar.id,
                      (route) => false,
                    ),
                  ),

                  ///about car
                  Positioned(
                    top: height * .15.h,
                    left: width * .05.w,
                    right: width * .05.w,
                    child: Row(
                      children: [
                        SizedBox(width: width * .1.w),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            dateTimeItem(time: '9:00 am', date: '20-9-2020'),
                            tileInItemVechile(
                              ke_y: Strings.carType,
                              value: 'فيراري',
                            ),
                            tileInItemVechile(
                              ke_y: Strings.carModel,
                              value: '2020 auto',
                            ),
                            tileInItemVechile(
                              ke_y: Strings.carColor,
                              color: AppConsts.mainColor,
                            ),
                          ],
                        ),
                        SizedBox(width: width * .02.w),
                        SizedBox(
                          height: height * .12.h,
                          width: width * .3.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(17.sp),
                            child: Image.asset(
                              'assets/images/car.png' //this image will get from API
                              ,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: height * .08.h, color: AppConsts.grey),
              tileServicePrice(
                value: Strings.total1,
                kkey: Strings.services,
                style: AppConsts.subTitleTextStyle,
              ),
              SizedBox(height: height * .02.h),
              tileServicePrice(
                value: '50 ريال', //not const
                kkey: Strings.normalWashing,
                style: AppConsts.subTitleTextStyleBlack,
              ),
              SizedBox(height: height * .02.h),
              tileServicePrice(
                value: '50 ريال', //not const
                kkey: Strings.perfume,
                style: AppConsts.subTitleTextStyleBlack,
              ),
              SizedBox(height: height * .02.h),
              tileServicePrice(
                value: '55 ريال', //not const
                kkey: Strings.valueAdded,
                style: AppConsts.subTitleTextStyleBlack,
              ),
              SizedBox(height: height * .02.h),
              tileServicePrice(
                value: '5 ريال', //not const
                kkey: Strings.total,
                style: AppConsts.subTitleTextStyleBlack,
              ),
              SizedBox(height: height * .15.h),

              ///add
              Row(
                children: [
                  Expanded(
                    child: customButton(
                      label: Strings.back,
                      onTap: () => showDialog(
                        context: context,
                        builder: (builder) => alert_dialog(
                          content: Strings.hintBack,
                          color: AppConsts.mainColor,
                          subTitle: 'اغسطس الساعه 4 م ',

                          ///not const
                          widget: Row(
                            children: [
                              Expanded(
                                child: customButton(
                                  label: Strings.back,
                                  onTap: () => Navigator.of(context)
                                      .pushNamedAndRemoveUntil(
                                    bottomNavBar.id,
                                    (route) => false,
                                  ),
                                  backColor: AppConsts.white,
                                  textStyle: AppConsts.subTitleTextStyle,
                                  borderColor: AppConsts.mainColor,
                                ),
                              ),
                              SizedBox(width: width * .01.w),
                              Expanded(
                                child: customButton(
                                  label: Strings.continueLabel,
                                  onTap: () => Navigator.of(context).pop(),
                                  backColor: AppConsts.mainColor,
                                  textStyle: AppConsts.subTitleTextStyleWhite,
                                  borderColor: AppConsts.mainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      backColor: AppConsts.white,
                      textStyle: AppConsts.subTitleTextStyle,
                      borderColor: AppConsts.mainColor,
                    ),
                  ),
                  SizedBox(width: width * .02.w),
                  Expanded(
                    child: customButton(
                      label: Strings.sure,
                      onTap: () => showDialog(
                        context: context,
                        builder: (builder) => alert_dialog(
                          image: AppAssets.smileImage,
                          content: Strings.thankYou,
                          color: AppConsts.mainColor,
                          subTitle: Strings.reservationSure,
                          widget: customButton(
                            label: Strings.done,
                            onTap: () => Navigator.of(context).pop(),
                            backColor: AppConsts.mainColor,
                            textStyle: AppConsts.subTitleTextStyleWhite,
                            borderColor: AppConsts.mainColor,
                          ),
                        ),
                      ),
                      backColor: AppConsts.mainColor,
                      textStyle: AppConsts.subTitleTextStyleWhite,
                      borderColor: AppConsts.mainColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
