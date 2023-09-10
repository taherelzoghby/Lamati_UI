import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/routes.dart';
import '../../consts/strings.dart';

import '../../consts/style.dart';
import '../../widgets/backgroundImageComponent.dart';
import '../../widgets/customAppBar.dart';

class myWalletPage extends StatelessWidget {
  const myWalletPage({super.key});
  static const String id = AppRoute.myWalletPage;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height.h,
            child: Stack(
              children: [
                const backgroundImageComponent(),

                ///appBar
                customAppBar(
                  title: Strings.wallet,
                  onTap: () => Navigator.of(context).pop(),
                ),

                ///info
                Positioned(
                  top: height * .2.h,
                  width: width.w,
                  child: SizedBox(
                    height: height * .3.h,
                    width: width * .3.w,
                    child: Column(
                      children: [
                        ///wallet icon
                        Icon(Icons.wallet, size: 100.sp),
                        Text(
                          Strings.freePrice,
                          style: TextStyle(
                            color: AppConsts.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 30.sp,
                          ),
                        ),
                        Text(
                          '50 ر س',

                          ///not const
                          style: AppConsts.bold1TitleTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
