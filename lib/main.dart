import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/app_routes.dart';
import 'package:space_app/planet_details/planet_details.dart';


import 'home/home_screen.dart';
import 'login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.loginRoute,
          routes: {
            AppRoutes.loginRoute: (context) => const LoginScreen(),
            AppRoutes.homeRoute: (context) => const HomeScreen(),
            AppRoutes.planetRoute: (context) => PlanetDetails(),
          },
        );
      },
    );
  }
}
