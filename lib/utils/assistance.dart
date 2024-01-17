import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Assistance  {
 static void showAlert(String message, bool isError) {
    Get.showSnackbar(
      GetSnackBar(
          margin: EdgeInsets.only(right: 16.w, left: 16.w, top: 10.h),
          isDismissible: true,
          icon: IconButton(
            icon: const Icon(Icons.close),
            color: isError ? Colors.red : Colors.green,
            onPressed: () {
              Get.back();
            },
          ),
          borderRadius: 12,
          messageText: Text(
            message,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: isError ? const Color(0xffFF2E29) : Colors.white,
            ),
          ),
          backgroundColor:
              isError ? const Color(0xffFDF0F0) : const Color(0xff042C43),
          forwardAnimationCurve: Curves.easeOut,
          reverseAnimationCurve: Curves.fastEaseInToSlowEaseOut,
          snackPosition: SnackPosition.TOP,
          animationDuration: const Duration(milliseconds: 400),

          ///400*2=800 so the time of stopping of the animation is 1300-800=500ms
          duration: const Duration(milliseconds: 1400),
          borderColor: isError ? const Color(0xffFFE2E2) : Colors.transparent),
    );
  }
}
