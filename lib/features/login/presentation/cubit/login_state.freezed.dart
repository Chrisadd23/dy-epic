// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState()';
  }
}

/// @nodoc
class $LoginStateCopyWith<$Res> {
  $LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoggedOut() when loggedOut != null:
        return loggedOut(_that);
      case _LoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _LoggedOut():
        return loggedOut(_that);
      case _LoggedIn():
        return loggedIn(_that);
      case _Loading():
        return loading(_that);
      case _Failure():
        return failure(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _LoggedOut() when loggedOut != null:
        return loggedOut(_that);
      case _LoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoggedOut() when loggedOut != null:
        return loggedOut();
      case _LoggedIn() when loggedIn != null:
        return loggedIn(_that.entityLoginCustomer);
      case _Loading() when loading != null:
        return loading();
      case _Failure() when failure != null:
        return failure(_that.failure);
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
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(EntityLoginCustomer entityLoginCustomer) loggedIn,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _LoggedOut():
        return loggedOut();
      case _LoggedIn():
        return loggedIn(_that.entityLoginCustomer);
      case _Loading():
        return loading();
      case _Failure():
        return failure(_that.failure);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _LoggedOut() when loggedOut != null:
        return loggedOut();
      case _LoggedIn() when loggedIn != null:
        return loggedIn(_that.entityLoginCustomer);
      case _Loading() when loading != null:
        return loading();
      case _Failure() when failure != null:
        return failure(_that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoggedOut extends LoginState {
  const _LoggedOut() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.loggedOut()';
  }
}

/// @nodoc

class _LoggedIn extends LoginState {
  const _LoggedIn({required this.entityLoginCustomer}) : super._();

  final EntityLoginCustomer entityLoginCustomer;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoggedInCopyWith<_LoggedIn> get copyWith =>
      __$LoggedInCopyWithImpl<_LoggedIn>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoggedIn &&
            (identical(other.entityLoginCustomer, entityLoginCustomer) ||
                other.entityLoginCustomer == entityLoginCustomer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entityLoginCustomer);

  @override
  String toString() {
    return 'LoginState.loggedIn(entityLoginCustomer: $entityLoginCustomer)';
  }
}

/// @nodoc
abstract mixin class _$LoggedInCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) _then) =
      __$LoggedInCopyWithImpl;
  @useResult
  $Res call({EntityLoginCustomer entityLoginCustomer});

  $EntityLoginCustomerCopyWith<$Res> get entityLoginCustomer;
}

/// @nodoc
class __$LoggedInCopyWithImpl<$Res> implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(this._self, this._then);

  final _LoggedIn _self;
  final $Res Function(_LoggedIn) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? entityLoginCustomer = null,
  }) {
    return _then(_LoggedIn(
      entityLoginCustomer: null == entityLoginCustomer
          ? _self.entityLoginCustomer
          : entityLoginCustomer // ignore: cast_nullable_to_non_nullable
              as EntityLoginCustomer,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityLoginCustomerCopyWith<$Res> get entityLoginCustomer {
    return $EntityLoginCustomerCopyWith<$Res>(_self.entityLoginCustomer,
        (value) {
      return _then(_self.copyWith(entityLoginCustomer: value));
    });
  }
}

/// @nodoc

class _Loading extends LoginState {
  const _Loading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.loading()';
  }
}

/// @nodoc

class _Failure extends LoginState {
  const _Failure(this.failure) : super._();

  final Failure failure;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'LoginState.failure(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(_Failure(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_self.failure, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

// dart format on
