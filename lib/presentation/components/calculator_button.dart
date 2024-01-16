import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../business_logic/calculator_cubit.dart';
import '../../constants.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {super.key, required this.label});

  final String label;

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
            context.read<CalculatorCubit>().userPressedButton(label);
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
    var operators = ['()', '%', '/', '*', '-', '+'];
    return operators.contains(label);
  }
}
