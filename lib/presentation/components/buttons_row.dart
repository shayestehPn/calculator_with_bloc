import 'package:flutter/material.dart';
import 'package:flutter_calculator/presentation/components/calculator_button.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow(
      {super.key,
      required this.label1,
      required this.label2,
      required this.label3,
      required this.label4});

  final String label1, label2, label3, label4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CalculatorButton(label: label1),
        CalculatorButton(label: label2),
        CalculatorButton(label: label3),
        CalculatorButton(label: label4),
      ],
    );
  }
}
