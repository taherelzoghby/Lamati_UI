import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/strings.dart';
import '../../widgets/itemVechile.dart';

import '../../consts/style.dart';
import '../../widgets/backgroundImageComponent.dart';

class vechiles extends StatelessWidget {
  const vechiles({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: height.h,
                  width: width.w,
                  child: Stack(
                    children: [
                      const backgroundImageComponent(),

                      ///appBar
                      Positioned(
                        top: height * .075.h,
                        child: Row(
                          children: [
                            SizedBox(width: width * .7.w),
                            Text(
                              Strings.myVechiles,
                              style: AppConsts.subTitleTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: height * .08.h,
                  child: SizedBox(
                    height: height * .82.h,
                    width: width * .9.w,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return vechileItem(
                          image: 'assets/images/car.png',

                          ///not const
                          vechile: 'فراري',

                          ///not const
                          model: '2020 auto',

                          ///not const
                          color: AppConsts.mainColor,

                          ///not const
                          onTap: () {
                            ///delete
                          },
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
