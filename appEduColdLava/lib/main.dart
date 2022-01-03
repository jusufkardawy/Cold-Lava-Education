import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:appEduColdLava/main_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('images/lahar-dingin.png'),
        nextScreen: MainScreen(),
        splashTransition: SplashTransition.decoratedBoxTransition,
        splashIconSize: 320,
      ),
    );
  }
}
