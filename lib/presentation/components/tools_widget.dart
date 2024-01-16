import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/business_logic/calculator_cubit.dart';

import '../../const.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.access_time,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.straighten,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calculate_outlined,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                      context.read<CalculatorCubit>().clearValueFromEnd();
                  },
                  icon: Icon(
                    Icons.backspace_outlined,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
