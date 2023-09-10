import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/appAssets.dart';
import '../../consts/routes.dart';
import '../../consts/strings.dart';
import '../../consts/style.dart';
import '../../widgets/alertDialog.dart';

import '../newVechilePage/newVechile.dart';
import '../../widgets/customButton.dart';

import '../CarServicesPage/carServices.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  static String id = AppRoute.homePageRoute;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          ///map
          Image.network(
            'https://img.freepik.com/premium-vector/world-map-vector-illustration_449764-315.jpg?w=2000'

            ///instead of Map
            ,
            fit: BoxFit.fill,
            height: height.h,
            width: width.w,
          ),

          Positioned(
            bottom: 50.h,
            child: Row(
              children: [
                SizedBox(width: width * .07.w),

                ///اضف مركبه
                SizedBox(
                  width: width * .4.w,
                  child: customButton(
                    label: Strings.addVechile,
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => alert_dialog(
                        image: AppAssets.plusImage,
                        content: Strings.hintAddVechile,
                        color: AppConsts.grey,
                        widget: customButton(
                          label: Strings.addNow,
                          onTap: () => Navigator.of(context)
                              .pushNamed(newVechilePage.id),
                          backColor: AppConsts.mainColor,
                          textStyle: AppConsts.subTitleTextStyleWhite,
                          borderColor: AppConsts.mainColor,
                        ),
                      ),
                    ),
                    backColor: AppConsts.mainColor,
                    textStyle: AppConsts.subTitleTextStyleWhite,
                    icon: const Icon(
                      Icons.car_crash_sharp,
                      color: AppConsts.white,
                    ),
                    borderColor: AppConsts.mainColor,
                  ),
                ),
                SizedBox(width: width * .03.w),

                ///احجز الان
                SizedBox(
                  width: width * .4.w,
                  child: customButton(
                    label: Strings.reserveNow,
                    onTap: () =>
                        Navigator.of(context).pushNamed(carServices.id),
                    backColor: AppConsts.mainColor,
                    textStyle: AppConsts.subTitleTextStyleWhite,
                    icon: const Icon(
                      Icons.add,
                      color: AppConsts.white,
                    ),
                    borderColor: AppConsts.mainColor,
                  ),
                ),
                SizedBox(width: width * .07.w),
              ],
            ),
          ),
          Positioned(
            top: 80.h,
            child: SizedBox(
              width: width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: AppConsts.textFieldSearchColor,
                    filled: true,
                    hintText: Strings.searchAboutPosition,
                    hintStyle: const TextStyle(color: AppConsts.mainColor),
                    hintTextDirection: TextDirection.rtl,
                    prefixIconColor: AppConsts.mainColor,
                    prefixIcon: const Icon(Icons.search),
                    enabledBorder: AppConsts.inputBorderSearch,
                    focusedBorder: AppConsts.inputBorderSearch,
                    errorBorder: AppConsts.inputBorderSearch,
                    disabledBorder: AppConsts.inputBorderSearch,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
