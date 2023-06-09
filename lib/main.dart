import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_test/screen/home_screen.dart';
import 'package:ui_test/screen/screen_four.dart';
import 'package:ui_test/screen/screen_three.dart';
import 'package:ui_test/screen/screen_two.dart';
import 'package:ui_test/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ii ui task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Utils.homeScreen,
      getPages: [
        GetPage(name: Utils.homeScreen, page: () => HomeScreen()),
        GetPage(name: Utils.screenTwo, page: () => ScreenTwo()),
        GetPage(name: Utils.screenThree, page: () => ScreenThree()),
        GetPage(name: Utils.screenFour, page: () => ScreenFour()),
      ],
    );
  }
}
