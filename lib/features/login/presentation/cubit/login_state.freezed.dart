// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(EntityLoginCustomer entityLoginCustomer) loggedIn,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl extends _LoggedOut {
  const _$LoggedOutImpl() : super._();

  @override
  String toString() {
    return 'LoginState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(EntityLoginCustomer entityLoginCustomer) loggedIn,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut extends LoginState {
  const factory _LoggedOut() = _$LoggedOutImpl;
  const _LoggedOut._() : super._();
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EntityLoginCustomer entityLoginCustomer});

  $EntityLoginCustomerCopyWith<$Res> get entityLoginCustomer;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityLoginCustomer = null,
  }) {
    return _then(_$LoggedInImpl(
      entityLoginCustomer: null == entityLoginCustomer
          ? _value.entityLoginCustomer
          : entityLoginCustomer // ignore: cast_nullable_to_non_nullable
              as EntityLoginCustomer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityLoginCustomerCopyWith<$Res> get entityLoginCustomer {
    return $EntityLoginCustomerCopyWith<$Res>(_value.entityLoginCustomer,
        (value) {
      return _then(_value.copyWith(entityLoginCustomer: value));
    });
  }
}

/// @nodoc

class _$LoggedInImpl extends _LoggedIn {
  const _$LoggedInImpl({required this.entityLoginCustomer}) : super._();

  @override
  final EntityLoginCustomer entityLoginCustomer;

  @override
  String toString() {
    return 'LoginState.loggedIn(entityLoginCustomer: $entityLoginCustomer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.entityLoginCustomer, entityLoginCustomer) ||
                other.entityLoginCustomer == entityLoginCustomer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entityLoginCustomer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(EntityLoginCustomer entityLoginCustomer) loggedIn,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
  }) {
    return loggedIn(entityLoginCustomer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
  }) {
    return loggedIn?.call(entityLoginCustomer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(entityLoginCustomer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn extends LoginState {
  const factory _LoggedIn(
          {required final EntityLoginCustomer entityLoginCustomer}) =
      _$LoggedInImpl;
  const _LoggedIn._() : super._();

  EntityLoginCustomer get entityLoginCustomer;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(EntityLoginCustomer entityLoginCustomer) loggedIn,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends LoginState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LoginState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(EntityLoginCustomer entityLoginCustomer) loggedIn,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(EntityLoginCustomer entityLoginCustomer)? loggedIn,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends LoginState {
  const factory _Failure(final Failure failure) = _$FailureImpl;
  const _Failure._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
