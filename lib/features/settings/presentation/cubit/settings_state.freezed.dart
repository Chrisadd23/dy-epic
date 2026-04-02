// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsState {
  bool get isSaving;
  List<Notifications>? get notifications;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      _$SettingsStateCopyWithImpl<SettingsState>(
          this as SettingsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsState &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSaving,
      const DeepCollectionEquality().hash(notifications));

  @override
  String toString() {
    return 'SettingsState(isSaving: $isSaving, notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) _then) =
      _$SettingsStateCopyWithImpl;
  @useResult
  $Res call({bool isSaving, List<Notifications>? notifications});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaving = null,
    Object? notifications = freezed,
  }) {
    return _then(_self.copyWith(
      isSaving: null == isSaving
          ? _self.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notifications>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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
    TResult Function(_SettingsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsState() when $default != null:
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
    TResult Function(_SettingsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingsState():
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
    TResult? Function(_SettingsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingsState() when $default != null:
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
    TResult Function(bool isSaving, List<Notifications>? notifications)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsState() when $default != null:
        return $default(_that.isSaving, _that.notifications);
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
    TResult Function(bool isSaving, List<Notifications>? notifications)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingsState():
        return $default(_that.isSaving, _that.notifications);
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
    TResult? Function(bool isSaving, List<Notifications>? notifications)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingsState() when $default != null:
        return $default(_that.isSaving, _that.notifications);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SettingsState implements SettingsState {
  const _SettingsState(
      {required this.isSaving, final List<Notifications>? notifications})
      : _notifications = notifications;

  @override
  final bool isSaving;
  final List<Notifications>? _notifications;
  @override
  List<Notifications>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSaving,
      const DeepCollectionEquality().hash(_notifications));

  @override
  String toString() {
    return 'SettingsState(isSaving: $isSaving, notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) _then) =
      __$SettingsStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isSaving, List<Notifications>? notifications});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSaving = null,
    Object? notifications = freezed,
  }) {
    return _then(_SettingsState(
      isSaving: null == isSaving
          ? _self.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notifications>?,
    ));
  }
}

/// @nodoc
mixin _$Notifications {
  bool get activated;
  NotificationType get notificationType;

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationsCopyWith<Notifications> get copyWith =>
      _$NotificationsCopyWithImpl<Notifications>(
          this as Notifications, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Notifications &&
            (identical(other.activated, activated) ||
                other.activated == activated) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activated, notificationType);

  @override
  String toString() {
    return 'Notifications(activated: $activated, notificationType: $notificationType)';
  }
}

/// @nodoc
abstract mixin class $NotificationsCopyWith<$Res> {
  factory $NotificationsCopyWith(
          Notifications value, $Res Function(Notifications) _then) =
      _$NotificationsCopyWithImpl;
  @useResult
  $Res call({bool activated, NotificationType notificationType});
}

/// @nodoc
class _$NotificationsCopyWithImpl<$Res>
    implements $NotificationsCopyWith<$Res> {
  _$NotificationsCopyWithImpl(this._self, this._then);

  final Notifications _self;
  final $Res Function(Notifications) _then;

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activated = null,
    Object? notificationType = null,
  }) {
    return _then(_self.copyWith(
      activated: null == activated
          ? _self.activated
          : activated // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: null == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ));
  }
}

/// Adds pattern-matching-related methods to [Notifications].
extension NotificationsPatterns on Notifications {
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
    TResult Function(_Notifications value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Notifications() when $default != null:
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
    TResult Function(_Notifications value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notifications():
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
    TResult? Function(_Notifications value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notifications() when $default != null:
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
    TResult Function(bool activated, NotificationType notificationType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Notifications() when $default != null:
        return $default(_that.activated, _that.notificationType);
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
    TResult Function(bool activated, NotificationType notificationType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notifications():
        return $default(_that.activated, _that.notificationType);
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
    TResult? Function(bool activated, NotificationType notificationType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notifications() when $default != null:
        return $default(_that.activated, _that.notificationType);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Notifications implements Notifications {
  const _Notifications(
      {required this.activated, required this.notificationType});

  @override
  final bool activated;
  @override
  final NotificationType notificationType;

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationsCopyWith<_Notifications> get copyWith =>
      __$NotificationsCopyWithImpl<_Notifications>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notifications &&
            (identical(other.activated, activated) ||
                other.activated == activated) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activated, notificationType);

  @override
  String toString() {
    return 'Notifications(activated: $activated, notificationType: $notificationType)';
  }
}

/// @nodoc
abstract mixin class _$NotificationsCopyWith<$Res>
    implements $NotificationsCopyWith<$Res> {
  factory _$NotificationsCopyWith(
          _Notifications value, $Res Function(_Notifications) _then) =
      __$NotificationsCopyWithImpl;
  @override
  @useResult
  $Res call({bool activated, NotificationType notificationType});
}

/// @nodoc
class __$NotificationsCopyWithImpl<$Res>
    implements _$NotificationsCopyWith<$Res> {
  __$NotificationsCopyWithImpl(this._self, this._then);

  final _Notifications _self;
  final $Res Function(_Notifications) _then;

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activated = null,
    Object? notificationType = null,
  }) {
    return _then(_Notifications(
      activated: null == activated
          ? _self.activated
          : activated // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: null == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ));
  }
}

// dart format on
