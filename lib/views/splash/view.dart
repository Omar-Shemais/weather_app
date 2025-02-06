import 'package:flutter/material.dart';
import 'package:weather_app/core/location_utils/location_utils.dart';
import 'package:weather_app/core/route_utils/route_utils.dart';
import 'package:weather_app/views/home/view.dart';

import '../google_maps/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    LocationUtils.getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Get weather from',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => RouteUtils.push(HomeView()),
              child: Text("Device Location"),
            ),
            ElevatedButton(
              onPressed: () => RouteUtils.push(GoogleMapsView()),
              child: Text("Google Map"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Search"),
            ),
          ],
        ),
      ),
    );
  }
}
