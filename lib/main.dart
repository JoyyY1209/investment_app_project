import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:investment_app_project/screens/bottom_nav.dart';
import 'package:investment_app_project/screens/home_page.dart';
import 'package:investment_app_project/splash_screen/splash_screen.dart';


void main() async {
  await GetStorage.init(); // Initialize GetStorage
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    bool isFirstTime = box.read('onboard_seen') ?? false;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(check: isFirstTime),
      home: BottomNav(),
    );
  }
}
