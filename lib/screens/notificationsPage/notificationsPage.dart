import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/routes.dart';
import '../../widgets/notifiComponent.dart';

import '../../consts/strings.dart';
import '../../widgets/backgroundImageComponent.dart';
import '../../widgets/customAppBar.dart';

class notificationsPage extends StatelessWidget {
  const notificationsPage({super.key});

  static const String id = AppRoute.notificationsPage;

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
                  title: Strings.notifications,
                  onTap: () => Navigator.of(context).pop(),
                ),
                Positioned(
                  top: height * .15.h,
                  width: width.w,
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: const SingleChildScrollView(
                      child: Column(
                        children: [
                          notifiComponent(
                            title: Strings.notifi1,
                            body:
                                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر',
                          ),
                          notifiComponent(
                            title: Strings.notifi1,
                            body:
                                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر',
                          ),
                          notifiComponent(
                            title: Strings.notifi1,
                            body:
                                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر',
                          ),
                          notifiComponent(
                            title: Strings.notifi1,
                            body:
                                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر',
                          ),
                          notifiComponent(
                            title: Strings.notifi1,
                            body:
                                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر',
                          ),
                        ],
                      ),
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
