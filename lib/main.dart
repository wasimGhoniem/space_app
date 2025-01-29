import 'package:flutter/material.dart';
import 'package:space_app/screens/home_screen/home_screen.dart';
import 'package:space_app/screens/login_screen/login_screen.dart';
import 'package:space_app/screens/planet_details/planet_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        PlanetDetails.routeName: (context) => PlanetDetails(),
      },
    );
  }
}
