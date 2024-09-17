import 'package:flutter/material.dart';
import 'package:trip_budgeter/OnBoarding_Pages/OnBoardingPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPages(),
    );
  }
}

