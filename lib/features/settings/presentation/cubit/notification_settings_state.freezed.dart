// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSettingsState {
  bool get isInProcess;
  bool get areAllActive;
  List<NotificationSetting> get listNotificationSetting;
  Failure? get failure;

  /// Create a copy of NotificationSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationSettingsStateCopyWith<NotificationSettingsState> get copyWith =>
      _$NotificationSettingsStateCopyWithImpl<NotificationSettingsState>(
          this as NotificationSettingsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSettingsState &&
            (identical(other.isInProcess, isInProcess) ||
                other.isInProcess == isInProcess) &&
            (identical(other.areAllActive, areAllActive) ||
                other.areAllActive == areAllActive) &&
            const DeepCollectionEquality().equals(
                other.listNotificationSetting, listNotificationSetting) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInProcess, areAllActive,
      const DeepCollectionEquality().hash(listNotificationSetting), failure);

  @override
  String toString() {
    return 'NotificationSettingsState(isInProcess: $isInProcess, areAllActive: $areAllActive, listNotificationSetting: $listNotificationSetting, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $NotificationSettingsStateCopyWith<$Res> {
  factory $NotificationSettingsStateCopyWith(NotificationSettingsState value,
          $Res Function(NotificationSettingsState) _then) =
      _$NotificationSettingsStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isInProcess,
      bool areAllActive,
      List<NotificationSetting> listNotificationSetting,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$NotificationSettingsStateCopyWithImpl<$Res>
    implements $NotificationSettingsStateCopyWith<$Res> {
  _$NotificationSettingsStateCopyWithImpl(this._self, this._then);

  final NotificationSettingsState _self;
  final $Res Function(NotificationSettingsState) _then;

  /// Create a copy of NotificationSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProcess = null,
    Object? areAllActive = null,
    Object? listNotificationSetting = null,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      isInProcess: null == isInProcess
          ? _self.isInProcess
          : isInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      areAllActive: null == areAllActive
          ? _self.areAllActive
          : areAllActive // ignore: cast_nullable_to_non_nullable
              as bool,
      listNotificationSetting: null == listNotificationSetting
          ? _self.listNotificationSetting
          : listNotificationSetting // ignore: cast_nullable_to_non_nullable
              as List<NotificationSetting>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of NotificationSettingsState
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

/// Adds pattern-matching-related methods to [NotificationSettingsState].
extension NotificationSettingsStatePatterns on NotificationSettingsState {
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
    TResult Function(_NotificationSettingsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSettingsState() when $default != null:
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
    TResult Function(_NotificationSettingsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettingsState():
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
    TResult? Function(_NotificationSettingsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettingsState() when $default != null:
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
            bool isInProcess,
            bool areAllActive,
            List<NotificationSetting> listNotificationSetting,
            Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSettingsState() when $default != null:
        return $default(_that.isInProcess, _that.areAllActive,
            _that.listNotificationSetting, _that.failure);
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
    TResult Function(bool isInProcess, bool areAllActive,
            List<NotificationSetting> listNotificationSetting, Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettingsState():
        return $default(_that.isInProcess, _that.areAllActive,
            _that.listNotificationSetting, _that.failure);
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
            bool isInProcess,
            bool areAllActive,
            List<NotificationSetting> listNotificationSetting,
            Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettingsState() when $default != null:
        return $default(_that.isInProcess, _that.areAllActive,
            _that.listNotificationSetting, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotificationSettingsState implements NotificationSettingsState {
  const _NotificationSettingsState(
      {this.isInProcess = false,
      this.areAllActive = false,
      final List<NotificationSetting> listNotificationSetting = const [],
      this.failure})
      : _listNotificationSetting = listNotificationSetting;

  @override
  @JsonKey()
  final bool isInProcess;
  @override
  @JsonKey()
  final bool areAllActive;
  final List<NotificationSetting> _listNotificationSetting;
  @override
  @JsonKey()
  List<NotificationSetting> get listNotificationSetting {
    if (_listNotificationSetting is EqualUnmodifiableListView)
      return _listNotificationSetting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listNotificationSetting);
  }

  @override
  final Failure? failure;

  /// Create a copy of NotificationSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationSettingsStateCopyWith<_NotificationSettingsState>
      get copyWith =>
          __$NotificationSettingsStateCopyWithImpl<_NotificationSettingsState>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationSettingsState &&
            (identical(other.isInProcess, isInProcess) ||
                other.isInProcess == isInProcess) &&
            (identical(other.areAllActive, areAllActive) ||
                other.areAllActive == areAllActive) &&
            const DeepCollectionEquality().equals(
                other._listNotificationSetting, _listNotificationSetting) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInProcess, areAllActive,
      const DeepCollectionEquality().hash(_listNotificationSetting), failure);

  @override
  String toString() {
    return 'NotificationSettingsState(isInProcess: $isInProcess, areAllActive: $areAllActive, listNotificationSetting: $listNotificationSetting, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$NotificationSettingsStateCopyWith<$Res>
    implements $NotificationSettingsStateCopyWith<$Res> {
  factory _$NotificationSettingsStateCopyWith(_NotificationSettingsState value,
          $Res Function(_NotificationSettingsState) _then) =
      __$NotificationSettingsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isInProcess,
      bool areAllActive,
      List<NotificationSetting> listNotificationSetting,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$NotificationSettingsStateCopyWithImpl<$Res>
    implements _$NotificationSettingsStateCopyWith<$Res> {
  __$NotificationSettingsStateCopyWithImpl(this._self, this._then);

  final _NotificationSettingsState _self;
  final $Res Function(_NotificationSettingsState) _then;

  /// Create a copy of NotificationSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isInProcess = null,
    Object? areAllActive = null,
    Object? listNotificationSetting = null,
    Object? failure = freezed,
  }) {
    return _then(_NotificationSettingsState(
      isInProcess: null == isInProcess
          ? _self.isInProcess
          : isInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      areAllActive: null == areAllActive
          ? _self.areAllActive
          : areAllActive // ignore: cast_nullable_to_non_nullable
              as bool,
      listNotificationSetting: null == listNotificationSetting
          ? _self._listNotificationSetting
          : listNotificationSetting // ignore: cast_nullable_to_non_nullable
              as List<NotificationSetting>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of NotificationSettingsState
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

/// @nodoc
mixin _$NotificationSetting {
  bool get isActive;
  EnumOrderProcess get enumOrderProcess;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationSettingCopyWith<NotificationSetting> get copyWith =>
      _$NotificationSettingCopyWithImpl<NotificationSetting>(
          this as NotificationSetting, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSetting &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.enumOrderProcess, enumOrderProcess) ||
                other.enumOrderProcess == enumOrderProcess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, enumOrderProcess);

  @override
  String toString() {
    return 'NotificationSetting(isActive: $isActive, enumOrderProcess: $enumOrderProcess)';
  }
}

/// @nodoc
abstract mixin class $NotificationSettingCopyWith<$Res> {
  factory $NotificationSettingCopyWith(
          NotificationSetting value, $Res Function(NotificationSetting) _then) =
      _$NotificationSettingCopyWithImpl;
  @useResult
  $Res call({bool isActive, EnumOrderProcess enumOrderProcess});
}

/// @nodoc
class _$NotificationSettingCopyWithImpl<$Res>
    implements $NotificationSettingCopyWith<$Res> {
  _$NotificationSettingCopyWithImpl(this._self, this._then);

  final NotificationSetting _self;
  final $Res Function(NotificationSetting) _then;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? enumOrderProcess = null,
  }) {
    return _then(_self.copyWith(
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      enumOrderProcess: null == enumOrderProcess
          ? _self.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationSetting].
extension NotificationSettingPatterns on NotificationSetting {
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
    TResult Function(_NotificationSetting value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSetting() when $default != null:
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
    TResult Function(_NotificationSetting value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSetting():
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
    TResult? Function(_NotificationSetting value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSetting() when $default != null:
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
    TResult Function(bool isActive, EnumOrderProcess enumOrderProcess)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSetting() when $default != null:
        return $default(_that.isActive, _that.enumOrderProcess);
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
    TResult Function(bool isActive, EnumOrderProcess enumOrderProcess) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSetting():
        return $default(_that.isActive, _that.enumOrderProcess);
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
    TResult? Function(bool isActive, EnumOrderProcess enumOrderProcess)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSetting() when $default != null:
        return $default(_that.isActive, _that.enumOrderProcess);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotificationSetting implements NotificationSetting {
  const _NotificationSetting(
      {required this.isActive, required this.enumOrderProcess});

  @override
  final bool isActive;
  @override
  final EnumOrderProcess enumOrderProcess;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationSettingCopyWith<_NotificationSetting> get copyWith =>
      __$NotificationSettingCopyWithImpl<_NotificationSetting>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationSetting &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.enumOrderProcess, enumOrderProcess) ||
                other.enumOrderProcess == enumOrderProcess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, enumOrderProcess);

  @override
  String toString() {
    return 'NotificationSetting(isActive: $isActive, enumOrderProcess: $enumOrderProcess)';
  }
}

/// @nodoc
abstract mixin class _$NotificationSettingCopyWith<$Res>
    implements $NotificationSettingCopyWith<$Res> {
  factory _$NotificationSettingCopyWith(_NotificationSetting value,
          $Res Function(_NotificationSetting) _then) =
      __$NotificationSettingCopyWithImpl;
  @override
  @useResult
  $Res call({bool isActive, EnumOrderProcess enumOrderProcess});
}

/// @nodoc
class __$NotificationSettingCopyWithImpl<$Res>
    implements _$NotificationSettingCopyWith<$Res> {
  __$NotificationSettingCopyWithImpl(this._self, this._then);

  final _NotificationSetting _self;
  final $Res Function(_NotificationSetting) _then;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isActive = null,
    Object? enumOrderProcess = null,
  }) {
    return _then(_NotificationSetting(
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      enumOrderProcess: null == enumOrderProcess
          ? _self.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
    ));
  }
}

// dart format on
