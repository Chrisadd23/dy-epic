// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderProcessState {
  EnumOrderProcess get orderProcess;
  bool get isInProcess;
  Failure? get failure;

  /// Create a copy of OrderProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderProcessStateCopyWith<OrderProcessState> get copyWith =>
      _$OrderProcessStateCopyWithImpl<OrderProcessState>(
          this as OrderProcessState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderProcessState &&
            (identical(other.orderProcess, orderProcess) ||
                other.orderProcess == orderProcess) &&
            (identical(other.isInProcess, isInProcess) ||
                other.isInProcess == isInProcess) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderProcess, isInProcess, failure);

  @override
  String toString() {
    return 'OrderProcessState(orderProcess: $orderProcess, isInProcess: $isInProcess, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $OrderProcessStateCopyWith<$Res> {
  factory $OrderProcessStateCopyWith(
          OrderProcessState value, $Res Function(OrderProcessState) _then) =
      _$OrderProcessStateCopyWithImpl;
  @useResult
  $Res call(
      {EnumOrderProcess orderProcess, bool isInProcess, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$OrderProcessStateCopyWithImpl<$Res>
    implements $OrderProcessStateCopyWith<$Res> {
  _$OrderProcessStateCopyWithImpl(this._self, this._then);

  final OrderProcessState _self;
  final $Res Function(OrderProcessState) _then;

  /// Create a copy of OrderProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProcess = null,
    Object? isInProcess = null,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      orderProcess: null == orderProcess
          ? _self.orderProcess
          : orderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      isInProcess: null == isInProcess
          ? _self.isInProcess
          : isInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of OrderProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.failure!, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderProcessState].
extension OrderProcessStatePatterns on OrderProcessState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderProcessState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderProcessState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderProcessState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderProcessState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderProcessState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderProcessState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            EnumOrderProcess orderProcess, bool isInProcess, Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderProcessState() when $default != null:
        return $default(_that.orderProcess, _that.isInProcess, _that.failure);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            EnumOrderProcess orderProcess, bool isInProcess, Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderProcessState():
        return $default(_that.orderProcess, _that.isInProcess, _that.failure);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            EnumOrderProcess orderProcess, bool isInProcess, Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderProcessState() when $default != null:
        return $default(_that.orderProcess, _that.isInProcess, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _OrderProcessState implements OrderProcessState {
  const _OrderProcessState(
      {required this.orderProcess, required this.isInProcess, this.failure});

  @override
  final EnumOrderProcess orderProcess;
  @override
  final bool isInProcess;
  @override
  final Failure? failure;

  /// Create a copy of OrderProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderProcessStateCopyWith<_OrderProcessState> get copyWith =>
      __$OrderProcessStateCopyWithImpl<_OrderProcessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderProcessState &&
            (identical(other.orderProcess, orderProcess) ||
                other.orderProcess == orderProcess) &&
            (identical(other.isInProcess, isInProcess) ||
                other.isInProcess == isInProcess) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderProcess, isInProcess, failure);

  @override
  String toString() {
    return 'OrderProcessState(orderProcess: $orderProcess, isInProcess: $isInProcess, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$OrderProcessStateCopyWith<$Res>
    implements $OrderProcessStateCopyWith<$Res> {
  factory _$OrderProcessStateCopyWith(
          _OrderProcessState value, $Res Function(_OrderProcessState) _then) =
      __$OrderProcessStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {EnumOrderProcess orderProcess, bool isInProcess, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$OrderProcessStateCopyWithImpl<$Res>
    implements _$OrderProcessStateCopyWith<$Res> {
  __$OrderProcessStateCopyWithImpl(this._self, this._then);

  final _OrderProcessState _self;
  final $Res Function(_OrderProcessState) _then;

  /// Create a copy of OrderProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderProcess = null,
    Object? isInProcess = null,
    Object? failure = freezed,
  }) {
    return _then(_OrderProcessState(
      orderProcess: null == orderProcess
          ? _self.orderProcess
          : orderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      isInProcess: null == isInProcess
          ? _self.isInProcess
          : isInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of OrderProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.failure!, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

// dart format on
