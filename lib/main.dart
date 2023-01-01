import 'package:animated_app/resources/app_themes.dart';
import 'package:animated_app/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated App',
      theme: getApplicationTheme(),
      home: const OnBoardingScreen(),
    );
  }
}
