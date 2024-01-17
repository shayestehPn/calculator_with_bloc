import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/utils/assistance.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../business_logic/calculator_cubit.dart';
import '../../utils/constants.dart';

class CalculatorButton extends StatelessWidget {
   CalculatorButton(
      {super.key, required this.label});

  final String label;
  final List notPressableButtonsLabel=["+/-"];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(side: BorderSide()),
            fixedSize:  Size(75.r, 75.r),
            backgroundColor: getButtonBackGroundColor(),
          ),
          onPressed: () {
            if(!notPressableButtonsLabel.contains(label)){
              context.read<CalculatorCubit>().userPressedButton(label);
            }else{
             Assistance.showAlert("دکمه کلیک شده فعال نمی باشد",true);
            }
          },
          child: Text(
            label,
            style: TextStyle(
              fontSize: 22.sp,
              color: getButtonTextColor(),
            ),
          ),
        );
      }
    );
  }

  Color getButtonBackGroundColor() =>
      buttonIsEqualButton() ? primaryColor : buttonBackgroundColor;

  Color getButtonTextColor() => buttonIsCleanButton()
      ? Colors.red.shade300
      : buttonIsOperator()
          ? primaryColor
          : Colors.white;

  bool buttonIsEqualButton() => label == "=";

  bool buttonIsCleanButton() => label == "C";

  bool buttonIsOperator() {
    return operators.contains(label);
  }
}
