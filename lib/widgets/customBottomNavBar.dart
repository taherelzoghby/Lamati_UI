import 'package:flutter/material.dart';

import '../consts/strings.dart';
import '../consts/style.dart';

class customBottomNavBar extends StatelessWidget {
  const customBottomNavBar({super.key, required this.onTap, required this.currentIndex, required this.data});
final void Function(int value) onTap;
final int currentIndex;
final List data;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: AppConsts.initialColor,
      selectedItemColor: AppConsts.mainColor,
      onTap: onTap,
      currentIndex: currentIndex,
      showUnselectedLabels: true,
      items: data
          .map(
            (e) => BottomNavigationBarItem(
              icon: e[Strings.icon],
              label: e[Strings.label],
            ),
          )
          .toList(),
    );
  }
}
