import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/appAssets.dart';
import '../../consts/strings.dart';
import '../../consts/style.dart';
import '../auth/loginPage/loginPage.dart';
import '../bottomNavBarHome/bottomNavBar.dart';
import '../helpPage/help_page.dart';
import '../myWallet/myWalletPage.dart';
import '../settingsPage/settings_page.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/customDivider.dart';

import '../../widgets/backgroundImageComponent.dart';
import '../../widgets/profileInfoTile.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const backgroundImageComponent(),

              ///appBar
              customAppBar(
                title: Strings.profile,
                onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  bottomNavBar.id,
                  (route) => false,
                ),
              ),

              ///info
              Positioned(
                top: height * .15.h,
                left: width * .05.w,
                right: width * .05.w,
                child: Container(
                  height: height * .1.h,
                  width: width * .9.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: AppConsts.white,
                    boxShadow: AppConsts.shadows,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: width * .2.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'طاهر امين طاهر الزغبي',
                            style: AppConsts.subTitleTextStyleBlack,
                          ),

                          ///not const
                          Row(
                            children: [
                              Text(
                                "0.0",
                                style: AppConsts.subTitleTextStyleBlack,
                              ),

                              ///not const
                              Icon(Icons.star, color: AppConsts.starColor),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: width * .05.w),
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage(AppAssets.profilePerson),
                        radius: height * .035.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          profileInfoTile(
            label: Strings.myWallet,
            iconData: Icons.wallet,
            onTap: () => Navigator.of(context).pushNamed(
              myWalletPage.id,
            ),
          ),
          const customDivider(),
          profileInfoTile(
            label: Strings.settings,
            iconData: Icons.settings,
            onTap: () => Navigator.of(context).pushNamed(SettingsPage.id),
          ),
          const customDivider(),
          profileInfoTile(
            label: Strings.help,
            iconData: Icons.help,
            onTap: () => Navigator.of(context).pushNamed(helpPage.id),
          ),
          const customDivider(),
          profileInfoTile(
            label: Strings.exit,
            iconData: Icons.exit_to_app,
            onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
              loginPage.id,
              (route) => false,
            ),
          ),
        ],
      ),
    );
  }
}
