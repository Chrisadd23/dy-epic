// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Failure {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Failure()';
  }
}

/// @nodoc
class $FailureCopyWith<$Res> {
  $FailureCopyWith(Failure _, $Res Function(Failure) __);
}

/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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
    TResult Function(_FailureMessage value)? message,
    TResult Function(_FailureLocalData value)? localData,
    TResult Function(_DatabaseError value)? databaseError,
    TResult Function(_StorageError value)? storageError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FailureMessage() when message != null:
        return message(_that);
      case _FailureLocalData() when localData != null:
        return localData(_that);
      case _DatabaseError() when databaseError != null:
        return databaseError(_that);
      case _StorageError() when storageError != null:
        return storageError(_that);
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
    required TResult Function(_FailureMessage value) message,
    required TResult Function(_FailureLocalData value) localData,
    required TResult Function(_DatabaseError value) databaseError,
    required TResult Function(_StorageError value) storageError,
  }) {
    final _that = this;
    switch (_that) {
      case _FailureMessage():
        return message(_that);
      case _FailureLocalData():
        return localData(_that);
      case _DatabaseError():
        return databaseError(_that);
      case _StorageError():
        return storageError(_that);
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
    TResult? Function(_FailureMessage value)? message,
    TResult? Function(_FailureLocalData value)? localData,
    TResult? Function(_DatabaseError value)? databaseError,
    TResult? Function(_StorageError value)? storageError,
  }) {
    final _that = this;
    switch (_that) {
      case _FailureMessage() when message != null:
        return message(_that);
      case _FailureLocalData() when localData != null:
        return localData(_that);
      case _DatabaseError() when databaseError != null:
        return databaseError(_that);
      case _StorageError() when storageError != null:
        return storageError(_that);
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
    TResult Function(String? message)? message,
    TResult Function(String? dataMessage)? localData,
    TResult Function(String? databaseMessage)? databaseError,
    TResult Function(String? storageMessage)? storageError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FailureMessage() when message != null:
        return message(_that.message);
      case _FailureLocalData() when localData != null:
        return localData(_that.dataMessage);
      case _DatabaseError() when databaseError != null:
        return databaseError(_that.databaseMessage);
      case _StorageError() when storageError != null:
        return storageError(_that.storageMessage);
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
    required TResult Function(String? message) message,
    required TResult Function(String? dataMessage) localData,
    required TResult Function(String? databaseMessage) databaseError,
    required TResult Function(String? storageMessage) storageError,
  }) {
    final _that = this;
    switch (_that) {
      case _FailureMessage():
        return message(_that.message);
      case _FailureLocalData():
        return localData(_that.dataMessage);
      case _DatabaseError():
        return databaseError(_that.databaseMessage);
      case _StorageError():
        return storageError(_that.storageMessage);
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
    TResult? Function(String? message)? message,
    TResult? Function(String? dataMessage)? localData,
    TResult? Function(String? databaseMessage)? databaseError,
    TResult? Function(String? storageMessage)? storageError,
  }) {
    final _that = this;
    switch (_that) {
      case _FailureMessage() when message != null:
        return message(_that.message);
      case _FailureLocalData() when localData != null:
        return localData(_that.dataMessage);
      case _DatabaseError() when databaseError != null:
        return databaseError(_that.databaseMessage);
      case _StorageError() when storageError != null:
        return storageError(_that.storageMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FailureMessage extends Failure {
  const _FailureMessage([this.message]) : super._();

  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureMessageCopyWith<_FailureMessage> get copyWith =>
      __$FailureMessageCopyWithImpl<_FailureMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailureMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.message(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureMessageCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$FailureMessageCopyWith(
          _FailureMessage value, $Res Function(_FailureMessage) _then) =
      __$FailureMessageCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$FailureMessageCopyWithImpl<$Res>
    implements _$FailureMessageCopyWith<$Res> {
  __$FailureMessageCopyWithImpl(this._self, this._then);

  final _FailureMessage _self;
  final $Res Function(_FailureMessage) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FailureMessage(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _FailureLocalData extends Failure {
  const _FailureLocalData([this.dataMessage]) : super._();

  final String? dataMessage;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureLocalDataCopyWith<_FailureLocalData> get copyWith =>
      __$FailureLocalDataCopyWithImpl<_FailureLocalData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailureLocalData &&
            (identical(other.dataMessage, dataMessage) ||
                other.dataMessage == dataMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataMessage);

  @override
  String toString() {
    return 'Failure.localData(dataMessage: $dataMessage)';
  }
}

/// @nodoc
abstract mixin class _$FailureLocalDataCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$FailureLocalDataCopyWith(
          _FailureLocalData value, $Res Function(_FailureLocalData) _then) =
      __$FailureLocalDataCopyWithImpl;
  @useResult
  $Res call({String? dataMessage});
}

/// @nodoc
class __$FailureLocalDataCopyWithImpl<$Res>
    implements _$FailureLocalDataCopyWith<$Res> {
  __$FailureLocalDataCopyWithImpl(this._self, this._then);

  final _FailureLocalData _self;
  final $Res Function(_FailureLocalData) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dataMessage = freezed,
  }) {
    return _then(_FailureLocalData(
      freezed == dataMessage
          ? _self.dataMessage
          : dataMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _DatabaseError extends Failure {
  const _DatabaseError([this.databaseMessage]) : super._();

  final String? databaseMessage;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DatabaseErrorCopyWith<_DatabaseError> get copyWith =>
      __$DatabaseErrorCopyWithImpl<_DatabaseError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DatabaseError &&
            (identical(other.databaseMessage, databaseMessage) ||
                other.databaseMessage == databaseMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, databaseMessage);

  @override
  String toString() {
    return 'Failure.databaseError(databaseMessage: $databaseMessage)';
  }
}

/// @nodoc
abstract mixin class _$DatabaseErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$DatabaseErrorCopyWith(
          _DatabaseError value, $Res Function(_DatabaseError) _then) =
      __$DatabaseErrorCopyWithImpl;
  @useResult
  $Res call({String? databaseMessage});
}

/// @nodoc
class __$DatabaseErrorCopyWithImpl<$Res>
    implements _$DatabaseErrorCopyWith<$Res> {
  __$DatabaseErrorCopyWithImpl(this._self, this._then);

  final _DatabaseError _self;
  final $Res Function(_DatabaseError) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? databaseMessage = freezed,
  }) {
    return _then(_DatabaseError(
      freezed == databaseMessage
          ? _self.databaseMessage
          : databaseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _StorageError extends Failure {
  const _StorageError([this.storageMessage]) : super._();

  final String? storageMessage;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StorageErrorCopyWith<_StorageError> get copyWith =>
      __$StorageErrorCopyWithImpl<_StorageError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StorageError &&
            (identical(other.storageMessage, storageMessage) ||
                other.storageMessage == storageMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storageMessage);

  @override
  String toString() {
    return 'Failure.storageError(storageMessage: $storageMessage)';
  }
}

/// @nodoc
abstract mixin class _$StorageErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$StorageErrorCopyWith(
          _StorageError value, $Res Function(_StorageError) _then) =
      __$StorageErrorCopyWithImpl;
  @useResult
  $Res call({String? storageMessage});
}

/// @nodoc
class __$StorageErrorCopyWithImpl<$Res>
    implements _$StorageErrorCopyWith<$Res> {
  __$StorageErrorCopyWithImpl(this._self, this._then);

  final _StorageError _self;
  final $Res Function(_StorageError) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? storageMessage = freezed,
  }) {
    return _then(_StorageError(
      freezed == storageMessage
          ? _self.storageMessage
          : storageMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
