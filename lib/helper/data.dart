import 'package:flutter/material.dart';
import '../screens/profilePage/profilePage.dart';

import '../consts/strings.dart';
import '../screens/homePage/homePage.dart';
import '../screens/reservationTabBarPage/reservationsPage.dart';
import '../screens/vechilesPage/vechiles.dart';

List<String> cars = ['النوع', 'فيرنا', 'مرسيدس', 'تيوتا', 'فيراري'];
List<String> brand = ['الماركه', 'فيرنا', 'مرسيدس', 'تيوتا', 'فيراري'];
List<String> models = ['الموديل', '2020', '2021', '2022', '2023', '2024'];
List<Color> colors = [
  Colors.red,
  Colors.yellow,
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.black,
  Colors.grey,
  Colors.pink,
  Colors.brown,
  Colors.lightBlue,
  Colors.lightGreen,
];

List<Widget> screens = [
  const profilePage(),
  const reservationsPage(),
  const vechiles(),
  const homePage(),
];
List<Map<String, dynamic>> dataNavBar = [
  {
    Strings.icon: const Icon(Icons.person),
    Strings.label: 'الحساب',
  },
  {
    Strings.icon: const Icon(Icons.calendar_month),
    Strings.label: 'الحجز',
  },
  {
    Strings.icon: const Icon(Icons.car_rental),
    Strings.label: 'المركبات',
  },
  {
    Strings.icon: const Icon(Icons.home),
    Strings.label: 'الرئيسيه',
  },
];
