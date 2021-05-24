import 'package:flutter/material.dart';
import 'package:grain_manager/pages/about.dart';
import 'package:grain_manager/pages/device_details.dart';
import 'package:grain_manager/pages/devices.dart';
import 'package:grain_manager/pages/guide.dart';
import 'package:grain_manager/pages/login.dart';
import 'package:grain_manager/pages/splash_screen.dart';
import 'package:grain_manager/pages/support.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: SplashScreen.route,
      routes: {
        SplashScreen.route: (context) => SplashScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        Devices.route: (context) => Devices(),
        DeviceDetails.route: (context) => DeviceDetails(),
        GuidePage.route: (context) => GuidePage(),
        SupportPage.route: (context) => SupportPage(),
        AboutPage.route: (context) => AboutPage(),
      },
    );
  }
}
