import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

import 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorState());

  void calculateValue() {
    Parser p = Parser();
    Expression exp = p.parse(state.inputValue);

    ContextModel equal = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, equal);
    emit(state.copyWith(calculateResult: eval.toString()));
  }

  void addEnteredValue(String value) {
    String previousValue = state.inputValue;
    setInputValue(previousValue + value);
  }

  void setInputValue(String value) {
    emit(state.copyWith(inputValue: value));
  }

  void clearInputValue() {
    emit(state.copyWith(inputValue: "",calculateResult: ""));
  }

  void userPressesButton(String buttonLabel){
    if (buttonLabel == 'C') {
      clearInputValue();
    } else if(buttonLabel=="="){
      calculateValue();
    }else{
      addEnteredValue(buttonLabel);
    }
  }

  void clearValueFromEnd() {
    String previousValue = state.inputValue;
    if (previousValue.isNotEmpty) {
      setInputValue(previousValue.substring(0, previousValue.length - 1));
    }
  }
}
