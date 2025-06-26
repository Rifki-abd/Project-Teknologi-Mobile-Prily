import 'package:teknologi_mobile_prily/controllers/theme_controller.dart';
import 'package:teknologi_mobile_prily/controllers/auth_controller.dart';
import 'package:teknologi_mobile_prily/utils/app_themes.dart';
import 'package:teknologi_mobile_prily/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(ThemeController());
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Store',
      theme: AppThemes.light,
      darkTheme: AppThemes.light, // Anda belum buat dark theme, jadi pakai light dulu
      themeMode: themeController.theme,
      defaultTransition: Transition.fade,
      home: const SplashScreen(),
    );
  }
}