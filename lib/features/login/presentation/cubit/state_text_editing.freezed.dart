// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_text_editing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateTextEditing {
  TextEditingController get customerNumber =>
      throw _privateConstructorUsedError;
  TextEditingController get customerPassword =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateTextEditingCopyWith<StateTextEditing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateTextEditingCopyWith<$Res> {
  factory $StateTextEditingCopyWith(
          StateTextEditing value, $Res Function(StateTextEditing) then) =
      _$StateTextEditingCopyWithImpl<$Res, StateTextEditing>;
  @useResult
  $Res call(
      {TextEditingController customerNumber,
      TextEditingController customerPassword});
}

/// @nodoc
class _$StateTextEditingCopyWithImpl<$Res, $Val extends StateTextEditing>
    implements $StateTextEditingCopyWith<$Res> {
  _$StateTextEditingCopyWithImpl(this._value, this._then);

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
abstract class _$$StateTextEditingImplCopyWith<$Res>
    implements $StateTextEditingCopyWith<$Res> {
  factory _$$StateTextEditingImplCopyWith(_$StateTextEditingImpl value,
          $Res Function(_$StateTextEditingImpl) then) =
      __$$StateTextEditingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController customerNumber,
      TextEditingController customerPassword});
}

/// @nodoc
class __$$StateTextEditingImplCopyWithImpl<$Res>
    extends _$StateTextEditingCopyWithImpl<$Res, _$StateTextEditingImpl>
    implements _$$StateTextEditingImplCopyWith<$Res> {
  __$$StateTextEditingImplCopyWithImpl(_$StateTextEditingImpl _value,
      $Res Function(_$StateTextEditingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? customerPassword = null,
  }) {
    return _then(_$StateTextEditingImpl(
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

class _$StateTextEditingImpl implements _StateTextEditing {
  const _$StateTextEditingImpl(
      {required this.customerNumber, required this.customerPassword});

  @override
  final TextEditingController customerNumber;
  @override
  final TextEditingController customerPassword;

  @override
  String toString() {
    return 'StateTextEditing(customerNumber: $customerNumber, customerPassword: $customerPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateTextEditingImpl &&
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
  _$$StateTextEditingImplCopyWith<_$StateTextEditingImpl> get copyWith =>
      __$$StateTextEditingImplCopyWithImpl<_$StateTextEditingImpl>(
          this, _$identity);
}

abstract class _StateTextEditing implements StateTextEditing {
  const factory _StateTextEditing(
          {required final TextEditingController customerNumber,
          required final TextEditingController customerPassword}) =
      _$StateTextEditingImpl;

  @override
  TextEditingController get customerNumber;
  @override
  TextEditingController get customerPassword;
  @override
  @JsonKey(ignore: true)
  _$$StateTextEditingImplCopyWith<_$StateTextEditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
