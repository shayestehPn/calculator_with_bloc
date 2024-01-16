import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_state.freezed.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    @Default("") String calculateResult,
    @Default("") String inputValue,
  }) = _CalculatorState;
}
