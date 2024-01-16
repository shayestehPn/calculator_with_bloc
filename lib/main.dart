import 'package:flutter/material.dart';
import 'package:flutter_calculator/const.dart';
import 'package:flutter_calculator/presentation/pages/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        ///to use themeData of dark mode
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: CalculatorPage(),
    );
  }
}
