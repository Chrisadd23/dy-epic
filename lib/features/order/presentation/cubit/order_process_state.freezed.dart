// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderProcessState {
  EnumOrderProcess get orderProcess => throw _privateConstructorUsedError;
  bool get isInProcess => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderProcessStateCopyWith<OrderProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProcessStateCopyWith<$Res> {
  factory $OrderProcessStateCopyWith(
          OrderProcessState value, $Res Function(OrderProcessState) then) =
      _$OrderProcessStateCopyWithImpl<$Res, OrderProcessState>;
  @useResult
  $Res call(
      {EnumOrderProcess orderProcess, bool isInProcess, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$OrderProcessStateCopyWithImpl<$Res, $Val extends OrderProcessState>
    implements $OrderProcessStateCopyWith<$Res> {
  _$OrderProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProcess = null,
    Object? isInProcess = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      orderProcess: null == orderProcess
          ? _value.orderProcess
          : orderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      isInProcess: null == isInProcess
          ? _value.isInProcess
          : isInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderProcessStateImplCopyWith<$Res>
    implements $OrderProcessStateCopyWith<$Res> {
  factory _$$OrderProcessStateImplCopyWith(_$OrderProcessStateImpl value,
          $Res Function(_$OrderProcessStateImpl) then) =
      __$$OrderProcessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumOrderProcess orderProcess, bool isInProcess, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$OrderProcessStateImplCopyWithImpl<$Res>
    extends _$OrderProcessStateCopyWithImpl<$Res, _$OrderProcessStateImpl>
    implements _$$OrderProcessStateImplCopyWith<$Res> {
  __$$OrderProcessStateImplCopyWithImpl(_$OrderProcessStateImpl _value,
      $Res Function(_$OrderProcessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProcess = null,
    Object? isInProcess = null,
    Object? failure = freezed,
  }) {
    return _then(_$OrderProcessStateImpl(
      orderProcess: null == orderProcess
          ? _value.orderProcess
          : orderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      isInProcess: null == isInProcess
          ? _value.isInProcess
          : isInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$OrderProcessStateImpl implements _OrderProcessState {
  const _$OrderProcessStateImpl(
      {required this.orderProcess, required this.isInProcess, this.failure});

  @override
  final EnumOrderProcess orderProcess;
  @override
  final bool isInProcess;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'OrderProcessState(orderProcess: $orderProcess, isInProcess: $isInProcess, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProcessStateImpl &&
            (identical(other.orderProcess, orderProcess) ||
                other.orderProcess == orderProcess) &&
            (identical(other.isInProcess, isInProcess) ||
                other.isInProcess == isInProcess) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderProcess, isInProcess, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProcessStateImplCopyWith<_$OrderProcessStateImpl> get copyWith =>
      __$$OrderProcessStateImplCopyWithImpl<_$OrderProcessStateImpl>(
          this, _$identity);
}

abstract class _OrderProcessState implements OrderProcessState {
  const factory _OrderProcessState(
      {required final EnumOrderProcess orderProcess,
      required final bool isInProcess,
      final Failure? failure}) = _$OrderProcessStateImpl;

  @override
  EnumOrderProcess get orderProcess;
  @override
  bool get isInProcess;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$OrderProcessStateImplCopyWith<_$OrderProcessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
