// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorState {
  String get calculatedResult => throw _privateConstructorUsedError;
  String get inputValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res, CalculatorState>;
  @useResult
  $Res call({String calculatedResult, String inputValue});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res, $Val extends CalculatorState>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculatedResult = null,
    Object? inputValue = null,
  }) {
    return _then(_value.copyWith(
      calculatedResult: null == calculatedResult
          ? _value.calculatedResult
          : calculatedResult // ignore: cast_nullable_to_non_nullable
              as String,
      inputValue: null == inputValue
          ? _value.inputValue
          : inputValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorStateImplCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$$CalculatorStateImplCopyWith(_$CalculatorStateImpl value,
          $Res Function(_$CalculatorStateImpl) then) =
      __$$CalculatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String calculatedResult, String inputValue});
}

/// @nodoc
class __$$CalculatorStateImplCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$CalculatorStateImpl>
    implements _$$CalculatorStateImplCopyWith<$Res> {
  __$$CalculatorStateImplCopyWithImpl(
      _$CalculatorStateImpl _value, $Res Function(_$CalculatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculatedResult = null,
    Object? inputValue = null,
  }) {
    return _then(_$CalculatorStateImpl(
      calculatedResult: null == calculatedResult
          ? _value.calculatedResult
          : calculatedResult // ignore: cast_nullable_to_non_nullable
              as String,
      inputValue: null == inputValue
          ? _value.inputValue
          : inputValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CalculatorStateImpl implements _CalculatorState {
  const _$CalculatorStateImpl(
      {this.calculatedResult = "", this.inputValue = ""});

  @override
  @JsonKey()
  final String calculatedResult;
  @override
  @JsonKey()
  final String inputValue;

  @override
  String toString() {
    return 'CalculatorState(calculatedResult: $calculatedResult, inputValue: $inputValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorStateImpl &&
            (identical(other.calculatedResult, calculatedResult) ||
                other.calculatedResult == calculatedResult) &&
            (identical(other.inputValue, inputValue) ||
                other.inputValue == inputValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calculatedResult, inputValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorStateImplCopyWith<_$CalculatorStateImpl> get copyWith =>
      __$$CalculatorStateImplCopyWithImpl<_$CalculatorStateImpl>(
          this, _$identity);
}

abstract class _CalculatorState implements CalculatorState {
  const factory _CalculatorState(
      {final String calculatedResult,
      final String inputValue}) = _$CalculatorStateImpl;

  @override
  String get calculatedResult;
  @override
  String get inputValue;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorStateImplCopyWith<_$CalculatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
