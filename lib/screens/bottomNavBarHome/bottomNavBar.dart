import 'package:flutter/material.dart';
import '../../consts/routes.dart';
import '../../widgets/customBottomNavBar.dart';

import '../../helper/data.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  static String id = AppRoute.bottomNavBarPageRoute;

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: customBottomNavBar(
        onTap: (value) => setState(() => currentIndex = value),
        currentIndex: currentIndex,
        data: dataNavBar,
      ),
    );
  }
}
