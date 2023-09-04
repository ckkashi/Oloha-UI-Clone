import 'package:entry_task/res/app_colors.dart';
import 'package:entry_task/screens/home_screen.dart';
import 'package:entry_task/screens/onboard_screen.dart';
import 'package:entry_task/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aloha - Entry Task',
      theme:
          ThemeData(primaryColor: AppColors.colorYellow, fontFamily: 'Gilroy'),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnboardScreen.id: (context) => const OnboardScreen(),
        HomeScreen.id: (context) => const HomeScreen()
      },
    );
  }
}
