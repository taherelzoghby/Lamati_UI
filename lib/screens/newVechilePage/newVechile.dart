import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../consts/appAssets.dart';
import '../../consts/routes.dart';
import '../../consts/strings.dart';
import '../../consts/style.dart';
import '../bottomNavBarHome/bottomNavBar.dart';
import '../../widgets/backgroundImageComponent.dart';
import '../../widgets/colorComponent.dart';
import '../../widgets/customButton.dart';
import '../../widgets/customTextfield.dart';
import '../../widgets/customdropDownButton.dart';

import '../../helper/data.dart';
import '../../widgets/customAppBar.dart';

class newVechilePage extends StatefulWidget {
  const newVechilePage({super.key});

  static String id = AppRoute.newVechilePage;

  @override
  State<newVechilePage> createState() => _newVechilePageState();
}

class _newVechilePageState extends State<newVechilePage> {
  var newValueDropType;
  var newValueDropBrand;
  var newValueDropModel;

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
                const backgroundImageComponent(),

                ///appBar
                customAppBar(
                  title: Strings.newVechile,
                  onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      bottomNavBar.id, (route) => false),
                ),

                ///drop down button
                Positioned(
                  top: height * .15.h,
                  left: width * .05.w,
                  right: width * .05.w,
                  child: customDropDownButton(
                    label: Strings.carType,
                    items: cars,
                    onChanged: (String? val) => setState(
                      () => newValueDropType = val!,
                    ),
                    newValueDrop: newValueDropType ?? cars[0],
                  ),
                ),
              ],
            ),

            ///ماركة المركبه         موديل المركبه
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: customDropDownButton(
                      label: Strings.vechileMarka,
                      items: brand,
                      onChanged: (String? val) => setState(
                        () => newValueDropBrand = val!,
                      ),
                      newValueDrop: newValueDropBrand ?? brand[0],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: customDropDownButton(
                      label: Strings.carModel,
                      items: models,
                      onChanged: (String? val) => setState(
                        () => newValueDropModel = val!,
                      ),
                      newValueDrop: newValueDropModel ?? models[0],
                    ),
                  ),
                ),
              ],
            ),

            ///لون المركبه
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    Strings.carColor,
                    style: AppConsts.textLabelField,
                  ),
                  SizedBox(
                    width: width * .95.w,
                    height: height * .05.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: colors
                          .map(
                            (e) => colorComponent(color: e, onTap: () {}),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),

            ///picked image
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: height * .25.h,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.rectanglePhoto),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(Strings.addPhotoOptional),
                        SvgPicture.asset(
                          AppAssets.camera,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            ///phone number
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: customTextField(
                label: Strings.phoneOptional,
                onSubmit: (String) {},
                onChange: (String) {},
              ),
            ),
            SizedBox(height: height * .02.h),

            ///add
            customButton(
              label: Strings.add,
              onTap: () => Navigator.of(context).pushNamed(bottomNavBar.id),
              backColor: AppConsts.mainColor,
              textStyle: AppConsts.subTitleTextStyleWhite,
              borderColor: AppConsts.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
