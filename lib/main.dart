import 'package:flutter/material.dart';
import 'package:flutter_calculator/presentation/pages/calculator_page.dart';
import 'package:flutter_calculator/utils/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
        return GetMaterialApp(
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
