import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/routes.dart';
import '../../consts/style.dart';
import '../../services/dateService.dart';
import '../../widgets/customButton.dart';
import '../../widgets/customTextfield.dart';

import '../../consts/strings.dart';
import '../../widgets/backgroundImageComponent.dart';
import '../../widgets/customAppBar.dart';

import '../bottomNavBarHome/bottomNavBar.dart';

import '../../widgets/itemService.dart';
import '../../widgets/totalPriceItem.dart';

class carServices extends StatelessWidget {
  const carServices({super.key});

  static String id = AppRoute.carServicesPage;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppConsts.backgroundPage,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const backgroundImageComponent(),

                ///appBar
                customAppBar(
                  title: Strings.carServices,
                  onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      bottomNavBar.id, (route) => false),
                ),

                ///time     date
                Positioned(
                  top: height * .15,
                  left: width * .05,
                  right: width * .05,
                  child: Row(
                    children: [
                      Expanded(
                        child: customTextField(
                          label: Strings.time,
                          onSubmit: (String) {},
                          onChange: (String) {},
                          backField: AppConsts.white,
                          readOnly: true,
                          icon: const Icon(Icons.timer),
                          onTap: () => DateTimeService.selectTimeFunc(context),
                        ),
                      ),
                      SizedBox(width: width * .05),
                      Expanded(
                        child: customTextField(
                          label: Strings.date,
                          onSubmit: (String) {},
                          onChange: (String) {},
                          backField: AppConsts.white,
                          readOnly: true,
                          icon: const Icon(Icons.date_range),
                          onTap: () => DateTimeService.selectDateFunc(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(Strings.mainServices, style: AppConsts.headStyle),
                    const itemService(
                      price: '50ر س',
                      service: 'غسيل عام',
                    ),
                    Text(
                      Strings.mainServices,
                      style: AppConsts.subTitleTextStyleBlack,
                    ),
                    const itemService(
                      price: '10ر س',
                      service: 'فواحه عطريه',
                    ),
                    SizedBox(height: height * .02.h),

                    ///total price
                    const totalPriceItem(totalPrice: 'رس 90'),

                    ///divider
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const Divider(),
                    ),
                    SizedBox(height: height * .02.h),

                    ///add notes
                    customTextField(
                      label: Strings.addNotes,
                      onSubmit: (v) {},
                      onChange: (v) {},
                      backField: AppConsts.white,
                      maxLines: 4,
                    ),
                    SizedBox(height: height * .02.h),

                    ///continue
                    customButton(
                      label: Strings.continueLabel,
                      onTap: () {},
                      backColor: AppConsts.mainColor,
                      textStyle: AppConsts.boldTitleTextStyleWhite,
                      borderColor: AppConsts.mainColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
