import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../consts/appAssets.dart';
import '../../consts/routes.dart';
import '../../consts/strings.dart';
import '../auth/loginPage/loginPage.dart';
import 'board.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../consts/style.dart';
import '../../widgets/customButton.dart';

class boarding extends StatefulWidget {
  const boarding({super.key});

  static const String id = AppRoute.onBoardingRoute;

  @override
  State<boarding> createState() => _boardingState();
}

class _boardingState extends State<boarding> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppConsts.mainColor,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: width.w,
          child: Stack(
            children: [
              ///back ground image
              SvgPicture.asset(
                AppAssets.backgroundImage,
                fit: BoxFit.fill,
                height: height * .57.h,
              ),
              PageView(
                onPageChanged: (int index) => setState(
                  () => currentPage = index,
                ),
                children: const [
                  boardStructure(
                    image: AppAssets.onBoardPhoto1,
                    title: Strings.onBoardLabel1,
                  ),
                  boardStructure(
                    image: AppAssets.onBoardPhoto2,
                    title: Strings.onBoardLabel2,
                  ),
                  boardStructure(
                    image: AppAssets.onBoardPhoto3,
                    title: Strings.onBoardLabel3,
                  ),
                ],
              ),

              ///start button
              Positioned(
                bottom: height * .2.h,
                child: SizedBox(
                  height: height * .08.h,
                  width: width.w,
                  child: Align(
                    alignment: Alignment.center,
                    child: customButton(
                      label: Strings.start,
                      onTap: () => Navigator.of(context).pushReplacementNamed(
                        loginPage.id,
                      ),
                      backColor: AppConsts.white,
                      textStyle: AppConsts.bold1TitleTextStyle,
                      borderColor: AppConsts.white,
                    ),
                  ),
                ),
              ),

              ///last    ...   next
              Positioned(
                bottom: 80.h,
                child: Row(
                  children: [
                    SizedBox(width: width * .03.w),
                    currentPage == 0
                        ? SizedBox(width: width * .163.w)
                        : Text(
                            Strings.previous,
                            style: AppConsts.subTitleTextStyleWhite,
                          ),
                    SizedBox(width: width * .05.w),
                    SizedBox(
                      width: width * .5.w,
                      child: PageViewDotIndicator(
                        currentItem: currentPage,
                        count: 3,
                        unselectedSize: Size(10.w, 2.h),
                        size: Size(18.w, 7.h),
                        boxShape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        selectedColor: AppConsts.white,
                        unselectedColor: AppConsts.white,
                      ),
                    ),
                    SizedBox(width: width * .07.w),
                    currentPage == 2
                        ? Text(
                            Strings.display,
                            style: AppConsts.subTitleTextStyleWhite,
                          )
                        : Text(
                            Strings.next,
                            style: AppConsts.subTitleTextStyleWhite,
                          ),
                    SizedBox(width: width * .03.w),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
