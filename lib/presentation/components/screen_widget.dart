import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/business_logic/calculator_cubit.dart';
import 'package:flutter_calculator/business_logic/calculator_state.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorCubit, CalculatorState>(
      builder: (context, state) {
        return Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  inputNumberText(state.inputValue, state.inputValue),
                  style: const TextStyle(fontSize: 32),
                  textAlign: TextAlign.right,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  state.calculateResult,
                  style: const TextStyle(fontSize: 40),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String inputNumberText(String text, String inputValue) {
    if (inputValue.isEmpty) {
      return '0';
    }
    return inputValue;
  }
}
