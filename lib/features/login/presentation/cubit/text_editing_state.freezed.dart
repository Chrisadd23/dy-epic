// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_editing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextEditingState {
  TextEditingController get customerNumber =>
      throw _privateConstructorUsedError;
  TextEditingController get customerPassword =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextEditingStateCopyWith<TextEditingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextEditingStateCopyWith<$Res> {
  factory $TextEditingStateCopyWith(
          TextEditingState value, $Res Function(TextEditingState) then) =
      _$TextEditingStateCopyWithImpl<$Res, TextEditingState>;
  @useResult
  $Res call(
      {TextEditingController customerNumber,
      TextEditingController customerPassword});
}

/// @nodoc
class _$TextEditingStateCopyWithImpl<$Res, $Val extends TextEditingState>
    implements $TextEditingStateCopyWith<$Res> {
  _$TextEditingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? customerPassword = null,
  }) {
    return _then(_value.copyWith(
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      customerPassword: null == customerPassword
          ? _value.customerPassword
          : customerPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextEditingStateImplCopyWith<$Res>
    implements $TextEditingStateCopyWith<$Res> {
  factory _$$TextEditingStateImplCopyWith(_$TextEditingStateImpl value,
          $Res Function(_$TextEditingStateImpl) then) =
      __$$TextEditingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController customerNumber,
      TextEditingController customerPassword});
}

/// @nodoc
class __$$TextEditingStateImplCopyWithImpl<$Res>
    extends _$TextEditingStateCopyWithImpl<$Res, _$TextEditingStateImpl>
    implements _$$TextEditingStateImplCopyWith<$Res> {
  __$$TextEditingStateImplCopyWithImpl(_$TextEditingStateImpl _value,
      $Res Function(_$TextEditingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? customerPassword = null,
  }) {
    return _then(_$TextEditingStateImpl(
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      customerPassword: null == customerPassword
          ? _value.customerPassword
          : customerPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$TextEditingStateImpl implements _TextEditingState {
  const _$TextEditingStateImpl(
      {required this.customerNumber, required this.customerPassword});

  @override
  final TextEditingController customerNumber;
  @override
  final TextEditingController customerPassword;

  @override
  String toString() {
    return 'TextEditingState(customerNumber: $customerNumber, customerPassword: $customerPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextEditingStateImpl &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.customerPassword, customerPassword) ||
                other.customerPassword == customerPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customerNumber, customerPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextEditingStateImplCopyWith<_$TextEditingStateImpl> get copyWith =>
      __$$TextEditingStateImplCopyWithImpl<_$TextEditingStateImpl>(
          this, _$identity);
}

abstract class _TextEditingState implements TextEditingState {
  const factory _TextEditingState(
          {required final TextEditingController customerNumber,
          required final TextEditingController customerPassword}) =
      _$TextEditingStateImpl;

  @override
  TextEditingController get customerNumber;
  @override
  TextEditingController get customerPassword;
  @override
  @JsonKey(ignore: true)
  _$$TextEditingStateImplCopyWith<_$TextEditingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
