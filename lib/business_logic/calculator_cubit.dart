import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/utils/constants.dart';
import 'package:math_expressions/math_expressions.dart';

import 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorState());

  void calculateValue() {
    Parser p = Parser();
    Expression exp = p.parse(state.inputValue);
    ContextModel equal = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, equal);
    emit(state.copyWith(calculatedResult: eval.toString()));
  }

  void addPressedButtonValue(String value) {
    String previousValue = state.inputValue;
    setInputValue(previousValue + value);
  }

  void setInputValue(String value) {
    emit(state.copyWith(inputValue: value));
  }

  void clearInputValue() {
    emit(state.copyWith(inputValue: "", calculatedResult: ""));
  }

  void userPressedButton(String buttonLabel) {
    if (buttonLabel == 'C') {
      clearInputValue();
    } else if (buttonLabel == "=") {
      calculateValue();
    } else if (buttonLabel == "( )") {
      addPressedButtonValue(getParenthesesValue());
    } else {
      addPressedButtonValue(buttonLabel);
    }
  }

  void clearValueFromEnd() {
    String previousValue = state.inputValue;
    if (previousValue.isNotEmpty) {
      setInputValue(previousValue.substring(0, previousValue.length - 1));
    }
  }

  String getParenthesesValue(){

    int numberOfOpenParentheses=0;
    List inputCharacters=state.inputValue.characters.toList();

    for(var element in inputCharacters){
      if(element=="("){
        numberOfOpenParentheses++;
      }else if(element==")"){
        numberOfOpenParentheses--;
      }
    }
    if(numberOfOpenParentheses>0 &&
        !operators.contains(inputCharacters.last)){
      return ")";
    }else{
      return "(";
    }
  }
}
