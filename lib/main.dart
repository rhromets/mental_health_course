import 'package:flutter/material.dart';
import 'package:mental_health_course/theme/theme.dart';
import 'package:mental_health_course/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightheme,
      home: const OnboardingScreen(),
      // home: const HomePage(),
    );
  }
}


