import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/routes.dart';
import '../notificationsPage/notificationsPage.dart';
import '../termsAndConditions/termsAndConditionsPage.dart';

import '../../consts/strings.dart';
import '../../widgets/backgroundImageComponent.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/customDivider.dart';
import '../../widgets/profileInfoTile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const String id = AppRoute.settingsPage;

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
                  title: Strings.settings,
                  onTap: () => Navigator.of(context).pop(),
                ),
                Positioned(
                  top: height * .2.h,
                  width: width.w,
                  child: Column(
                    children: [
                      profileInfoTile(
                        label: Strings.notifications,
                        iconData: Icons.notifications,
                        onTap: () => Navigator.of(context)
                            .pushNamed(notificationsPage.id),
                      ),
                      const customDivider(),
                      profileInfoTile(
                        label: Strings.privacy,
                        iconData: Icons.privacy_tip,
                        onTap: () {},
                      ),
                      const customDivider(),
                      profileInfoTile(
                        label: Strings.terms,
                        iconData: Icons.done,
                        onTap: () => Navigator.of(context)
                            .pushNamed(termsAndConditionsPage.id),
                      ),
                    ],
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
