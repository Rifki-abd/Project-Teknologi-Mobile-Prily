import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:teknologi_mobile_prily/controllers/theme_controller.dart';
import 'package:teknologi_mobile_prily/utils/app_themes.dart';
import 'package:teknologi_mobile_prily/view/splash_screen.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GetMaterialApp(
      title: 'Preloved Daily',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: themeController.theme,
      defaultTransition: Transition.fade,
      home: const SplashScreen(),
    );
  }
  }