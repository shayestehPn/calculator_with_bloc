import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/business_logic/calculator_cubit.dart';
import 'package:flutter_calculator/presentation/components/buttons_widget.dart';

import '../components/screen_widget.dart';
import '../components/tools_widget.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalculatorCubit>(
      create: (BuildContext context) {
        return CalculatorCubit();
      },
      child: const Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ScreenWidget(),
              ToolsWidget(),
              ButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
