import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/style.dart';
import '../../widgets/alertDetailsResrv.dart';
import '../../widgets/itemReserv.dart';
import '../detailsReservationPage/detailsReservationPage.dart';

class currentPage extends StatelessWidget {
  const currentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3.5 / 2,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(10.sp),
          onTap: () {
            showGeneralDialog(
              context: context,
              pageBuilder: (BuildContext context, Animation<double> animation,
                      Animation<double> secondaryAnimation) =>
                  const alertDetailsResrv(),
            );
          },
          onLongPress: () => Navigator.of(context).pushNamed(detailsPage.id),
          child: const itemReserv(
            time: '9:00 am',

            ///not const
            date: '22-9-2022',

            ///not const
            color: AppConsts.mainColor,

            ///not const
            car: 'فيراري',

            ///not const
          ),
        );
      },
    );
  }
}
