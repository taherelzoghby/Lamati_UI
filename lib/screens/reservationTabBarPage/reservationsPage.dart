import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/strings.dart';
import '../../widgets/tabBar.dart';

import '../../consts/style.dart';
import '../../widgets/backgroundImageComponent.dart';
import '../currentReservationPage/current.dart';
import '../previousReservationPage/previous.dart';

class reservationsPage extends StatefulWidget {
  const reservationsPage({super.key});

  @override
  State<reservationsPage> createState() => _reservationsPageState();
}

class _reservationsPageState extends State<reservationsPage> {
  int current = 0;
  List<Widget> screens = const [
    previousPage(),
    currentPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: height.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      const backgroundImageComponent(),

                      ///appBar
                      Positioned(
                        top: height * .075.h,
                        child: Row(
                          children: [
                            SizedBox(width: width * .7.w),
                            Text(
                              Strings.reservations,
                              style: AppConsts.subTitleTextStyle,
                            ),
                          ],
                        ),
                      ),

                      ///tabs
                      Positioned(
                        top: height * .15.h,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => setState(() => current = 0),
                              child: tabBar(
                                label: Strings.previous,
                                color: current == 0
                                    ? AppConsts.mainColor
                                    : AppConsts.grey,
                              ),
                            ),
                            InkWell(
                              onTap: () => setState(() => current = 1),
                              child: tabBar(
                                label: Strings.current,
                                color: current == 1
                                    ? AppConsts.mainColor
                                    : AppConsts.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                ///screens
                Positioned(
                  bottom: height * .07.h,
                  child: SizedBox(
                    height: height * .74.h,
                    width: width.w,
                    child: screens[current],
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
