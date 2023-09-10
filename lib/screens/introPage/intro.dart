import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/appAssets.dart';
import '../../consts/routes.dart';
import '../../consts/style.dart';
import '../onBoarding/boarding.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  static const String id = AppRoute.introRoute;

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushNamed(boarding.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Image.asset(AppAssets.logo),
        ),
      ),
    );
  }
}
