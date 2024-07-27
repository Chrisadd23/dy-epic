// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) message,
    required TResult Function(String? databaseMessage) databaseError,
    required TResult Function(String? storageMessage) storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? message,
    TResult? Function(String? databaseMessage)? databaseError,
    TResult? Function(String? storageMessage)? storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? message,
    TResult Function(String? databaseMessage)? databaseError,
    TResult Function(String? storageMessage)? storageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureMessage value) message,
    required TResult Function(_DatabaseError value) databaseError,
    required TResult Function(_StorageError value) storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureMessage value)? message,
    TResult? Function(_DatabaseError value)? databaseError,
    TResult? Function(_StorageError value)? storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureMessage value)? message,
    TResult Function(_DatabaseError value)? databaseError,
    TResult Function(_StorageError value)? storageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureMessageImplCopyWith<$Res> {
  factory _$$FailureMessageImplCopyWith(_$FailureMessageImpl value,
          $Res Function(_$FailureMessageImpl) then) =
      __$$FailureMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureMessageImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureMessageImpl>
    implements _$$FailureMessageImplCopyWith<$Res> {
  __$$FailureMessageImplCopyWithImpl(
      _$FailureMessageImpl _value, $Res Function(_$FailureMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureMessageImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureMessageImpl extends _FailureMessage {
  const _$FailureMessageImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.message(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureMessageImplCopyWith<_$FailureMessageImpl> get copyWith =>
      __$$FailureMessageImplCopyWithImpl<_$FailureMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) message,
    required TResult Function(String? databaseMessage) databaseError,
    required TResult Function(String? storageMessage) storageError,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? message,
    TResult? Function(String? databaseMessage)? databaseError,
    TResult? Function(String? storageMessage)? storageError,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? message,
    TResult Function(String? databaseMessage)? databaseError,
    TResult Function(String? storageMessage)? storageError,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureMessage value) message,
    required TResult Function(_DatabaseError value) databaseError,
    required TResult Function(_StorageError value) storageError,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureMessage value)? message,
    TResult? Function(_DatabaseError value)? databaseError,
    TResult? Function(_StorageError value)? storageError,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureMessage value)? message,
    TResult Function(_DatabaseError value)? databaseError,
    TResult Function(_StorageError value)? storageError,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _FailureMessage extends Failure {
  const factory _FailureMessage([final String? message]) = _$FailureMessageImpl;
  const _FailureMessage._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$FailureMessageImplCopyWith<_$FailureMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseErrorImplCopyWith<$Res> {
  factory _$$DatabaseErrorImplCopyWith(
          _$DatabaseErrorImpl value, $Res Function(_$DatabaseErrorImpl) then) =
      __$$DatabaseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? databaseMessage});
}

/// @nodoc
class __$$DatabaseErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DatabaseErrorImpl>
    implements _$$DatabaseErrorImplCopyWith<$Res> {
  __$$DatabaseErrorImplCopyWithImpl(
      _$DatabaseErrorImpl _value, $Res Function(_$DatabaseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? databaseMessage = freezed,
  }) {
    return _then(_$DatabaseErrorImpl(
      freezed == databaseMessage
          ? _value.databaseMessage
          : databaseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DatabaseErrorImpl extends _DatabaseError {
  const _$DatabaseErrorImpl([this.databaseMessage]) : super._();

  @override
  final String? databaseMessage;

  @override
  String toString() {
    return 'Failure.databaseError(databaseMessage: $databaseMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseErrorImpl &&
            (identical(other.databaseMessage, databaseMessage) ||
                other.databaseMessage == databaseMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, databaseMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseErrorImplCopyWith<_$DatabaseErrorImpl> get copyWith =>
      __$$DatabaseErrorImplCopyWithImpl<_$DatabaseErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) message,
    required TResult Function(String? databaseMessage) databaseError,
    required TResult Function(String? storageMessage) storageError,
  }) {
    return databaseError(databaseMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? message,
    TResult? Function(String? databaseMessage)? databaseError,
    TResult? Function(String? storageMessage)? storageError,
  }) {
    return databaseError?.call(databaseMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? message,
    TResult Function(String? databaseMessage)? databaseError,
    TResult Function(String? storageMessage)? storageError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(databaseMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureMessage value) message,
    required TResult Function(_DatabaseError value) databaseError,
    required TResult Function(_StorageError value) storageError,
  }) {
    return databaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureMessage value)? message,
    TResult? Function(_DatabaseError value)? databaseError,
    TResult? Function(_StorageError value)? storageError,
  }) {
    return databaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureMessage value)? message,
    TResult Function(_DatabaseError value)? databaseError,
    TResult Function(_StorageError value)? storageError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(this);
    }
    return orElse();
  }
}

abstract class _DatabaseError extends Failure {
  const factory _DatabaseError([final String? databaseMessage]) =
      _$DatabaseErrorImpl;
  const _DatabaseError._() : super._();

  String? get databaseMessage;
  @JsonKey(ignore: true)
  _$$DatabaseErrorImplCopyWith<_$DatabaseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageErrorImplCopyWith<$Res> {
  factory _$$StorageErrorImplCopyWith(
          _$StorageErrorImpl value, $Res Function(_$StorageErrorImpl) then) =
      __$$StorageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? storageMessage});
}

/// @nodoc
class __$$StorageErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$StorageErrorImpl>
    implements _$$StorageErrorImplCopyWith<$Res> {
  __$$StorageErrorImplCopyWithImpl(
      _$StorageErrorImpl _value, $Res Function(_$StorageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageMessage = freezed,
  }) {
    return _then(_$StorageErrorImpl(
      freezed == storageMessage
          ? _value.storageMessage
          : storageMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StorageErrorImpl extends _StorageError {
  const _$StorageErrorImpl([this.storageMessage]) : super._();

  @override
  final String? storageMessage;

  @override
  String toString() {
    return 'Failure.storageError(storageMessage: $storageMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageErrorImpl &&
            (identical(other.storageMessage, storageMessage) ||
                other.storageMessage == storageMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storageMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageErrorImplCopyWith<_$StorageErrorImpl> get copyWith =>
      __$$StorageErrorImplCopyWithImpl<_$StorageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) message,
    required TResult Function(String? databaseMessage) databaseError,
    required TResult Function(String? storageMessage) storageError,
  }) {
    return storageError(storageMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? message,
    TResult? Function(String? databaseMessage)? databaseError,
    TResult? Function(String? storageMessage)? storageError,
  }) {
    return storageError?.call(storageMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? message,
    TResult Function(String? databaseMessage)? databaseError,
    TResult Function(String? storageMessage)? storageError,
    required TResult orElse(),
  }) {
    if (storageError != null) {
      return storageError(storageMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureMessage value) message,
    required TResult Function(_DatabaseError value) databaseError,
    required TResult Function(_StorageError value) storageError,
  }) {
    return storageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureMessage value)? message,
    TResult? Function(_DatabaseError value)? databaseError,
    TResult? Function(_StorageError value)? storageError,
  }) {
    return storageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureMessage value)? message,
    TResult Function(_DatabaseError value)? databaseError,
    TResult Function(_StorageError value)? storageError,
    required TResult orElse(),
  }) {
    if (storageError != null) {
      return storageError(this);
    }
    return orElse();
  }
}

abstract class _StorageError extends Failure {
  const factory _StorageError([final String? storageMessage]) =
      _$StorageErrorImpl;
  const _StorageError._() : super._();

  String? get storageMessage;
  @JsonKey(ignore: true)
  _$$StorageErrorImplCopyWith<_$StorageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
