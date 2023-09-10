import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'consts/strings.dart';
import 'consts/style.dart';
import 'screens/auth/changedPage/changedPage.dart';
import 'screens/auth/confirmtionCodePage/confirmationCode.dart';
import 'screens/auth/forgetPasswordPage/forgetPassword.dart';
import 'screens/auth/forgetPasswordPage/forgetPasswordPage2.dart';
import 'screens/auth/loginPage/loginPage.dart';
import 'screens/auth/registerPage/registerPage.dart';
import 'screens/auth/updatePage/updateProfile.dart';
import 'screens/bottomNavBarHome/bottomNavBar.dart';
import 'screens/helpPage/help_page.dart';
import 'screens/introPage/intro.dart';
import 'screens/myWallet/myWalletPage.dart';
import 'screens/newVechilePage/newVechile.dart';
import 'screens/notificationsPage/notificationsPage.dart';
import 'screens/onBoarding/boarding.dart';
import 'screens/CarServicesPage/carServices.dart';
import 'screens/detailsReservationPage/detailsReservationPage.dart';
import 'screens/settingsPage/settings_page.dart';
import 'screens/termsAndConditions/termsAndConditionsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 851),
      builder: (context, child) => MaterialApp(
        title: Strings.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppConsts.white),
          useMaterial3: true,
          fontFamily: Strings.fontFamily,
        ),
        initialRoute: intro.id,
        routes: {
          intro.id: (_) => const intro(),
          boarding.id: (_) => const boarding(),
          loginPage.id: (_) => const loginPage(),
          registerPage.id: (_) => const registerPage(),
          confirmationCode.id: (_) => const confirmationCode(),
          bottomNavBar.id: (_) => const bottomNavBar(),
          newVechilePage.id: (_) => const newVechilePage(),
          detailsPage.id: (_) => const detailsPage(),
          forgetPassPage.id: (_) => const forgetPassPage(),
          forgetPassPage2.id: (_) => const forgetPassPage2(),
          changedPage.id: (_) => const changedPage(),
          updateProfile.id: (_) => const updateProfile(),
          carServices.id: (_) => const carServices(),
          myWalletPage.id: (_) => const myWalletPage(),
          SettingsPage.id: (_) => const SettingsPage(),
          helpPage.id: (_) => const helpPage(),
          termsAndConditionsPage.id: (_) => const termsAndConditionsPage(),
          notificationsPage.id: (_) => const notificationsPage(),
        },
      ),
    );
  }
}
