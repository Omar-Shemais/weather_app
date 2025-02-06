import 'package:flutter/material.dart';
import 'package:weather_app/views/splash/view.dart';

import 'core/route_utils/route_utils.dart';
import 'core/utils.dart';
import 'views/home/view.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RouteUtils.navigatorKey,
      debugShowCheckedModeBanner: false,
      // theme: Utils.appTheme,
      home: SplashView(),
    );
  }
}
