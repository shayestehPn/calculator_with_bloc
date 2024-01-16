import 'package:flutter/material.dart';
import 'package:flutter_calculator/const.dart';
import 'package:flutter_calculator/presentation/pages/calculator_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      designSize: const Size(360, 790),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            ///to use themeData of dark mode
            scaffoldBackgroundColor: backgroundColor,
          ),
          home: const CalculatorPage(),
        );
      },
    );
  }
}
