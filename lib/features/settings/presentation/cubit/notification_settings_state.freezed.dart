// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationSettingsState {
  bool get areAllActive => throw _privateConstructorUsedError;
  List<NotificationSetting> get listNotificationSetting =>
      throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationSettingsStateCopyWith<NotificationSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsStateCopyWith<$Res> {
  factory $NotificationSettingsStateCopyWith(NotificationSettingsState value,
          $Res Function(NotificationSettingsState) then) =
      _$NotificationSettingsStateCopyWithImpl<$Res, NotificationSettingsState>;
  @useResult
  $Res call(
      {bool areAllActive,
      List<NotificationSetting> listNotificationSetting,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$NotificationSettingsStateCopyWithImpl<$Res,
        $Val extends NotificationSettingsState>
    implements $NotificationSettingsStateCopyWith<$Res> {
  _$NotificationSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areAllActive = null,
    Object? listNotificationSetting = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      areAllActive: null == areAllActive
          ? _value.areAllActive
          : areAllActive // ignore: cast_nullable_to_non_nullable
              as bool,
      listNotificationSetting: null == listNotificationSetting
          ? _value.listNotificationSetting
          : listNotificationSetting // ignore: cast_nullable_to_non_nullable
              as List<NotificationSetting>,
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
abstract class _$$NotificationSettingsStateImplCopyWith<$Res>
    implements $NotificationSettingsStateCopyWith<$Res> {
  factory _$$NotificationSettingsStateImplCopyWith(
          _$NotificationSettingsStateImpl value,
          $Res Function(_$NotificationSettingsStateImpl) then) =
      __$$NotificationSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool areAllActive,
      List<NotificationSetting> listNotificationSetting,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$NotificationSettingsStateImplCopyWithImpl<$Res>
    extends _$NotificationSettingsStateCopyWithImpl<$Res,
        _$NotificationSettingsStateImpl>
    implements _$$NotificationSettingsStateImplCopyWith<$Res> {
  __$$NotificationSettingsStateImplCopyWithImpl(
      _$NotificationSettingsStateImpl _value,
      $Res Function(_$NotificationSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areAllActive = null,
    Object? listNotificationSetting = null,
    Object? failure = freezed,
  }) {
    return _then(_$NotificationSettingsStateImpl(
      areAllActive: null == areAllActive
          ? _value.areAllActive
          : areAllActive // ignore: cast_nullable_to_non_nullable
              as bool,
      listNotificationSetting: null == listNotificationSetting
          ? _value._listNotificationSetting
          : listNotificationSetting // ignore: cast_nullable_to_non_nullable
              as List<NotificationSetting>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$NotificationSettingsStateImpl implements _NotificationSettingsState {
  const _$NotificationSettingsStateImpl(
      {this.areAllActive = false,
      final List<NotificationSetting> listNotificationSetting = const [],
      this.failure})
      : _listNotificationSetting = listNotificationSetting;

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

  @override
  String toString() {
    return 'NotificationSettingsState(areAllActive: $areAllActive, listNotificationSetting: $listNotificationSetting, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsStateImpl &&
            (identical(other.areAllActive, areAllActive) ||
                other.areAllActive == areAllActive) &&
            const DeepCollectionEquality().equals(
                other._listNotificationSetting, _listNotificationSetting) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, areAllActive,
      const DeepCollectionEquality().hash(_listNotificationSetting), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsStateImplCopyWith<_$NotificationSettingsStateImpl>
      get copyWith => __$$NotificationSettingsStateImplCopyWithImpl<
          _$NotificationSettingsStateImpl>(this, _$identity);
}

abstract class _NotificationSettingsState implements NotificationSettingsState {
  const factory _NotificationSettingsState(
      {final bool areAllActive,
      final List<NotificationSetting> listNotificationSetting,
      final Failure? failure}) = _$NotificationSettingsStateImpl;

  @override
  bool get areAllActive;
  @override
  List<NotificationSetting> get listNotificationSetting;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSettingsStateImplCopyWith<_$NotificationSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationSetting {
  bool get isInUse => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  EnumOrderProcess get enumOrderProcess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationSettingCopyWith<NotificationSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingCopyWith<$Res> {
  factory $NotificationSettingCopyWith(
          NotificationSetting value, $Res Function(NotificationSetting) then) =
      _$NotificationSettingCopyWithImpl<$Res, NotificationSetting>;
  @useResult
  $Res call({bool isInUse, bool isActive, EnumOrderProcess enumOrderProcess});
}

/// @nodoc
class _$NotificationSettingCopyWithImpl<$Res, $Val extends NotificationSetting>
    implements $NotificationSettingCopyWith<$Res> {
  _$NotificationSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInUse = null,
    Object? isActive = null,
    Object? enumOrderProcess = null,
  }) {
    return _then(_value.copyWith(
      isInUse: null == isInUse
          ? _value.isInUse
          : isInUse // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      enumOrderProcess: null == enumOrderProcess
          ? _value.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingImplCopyWith<$Res>
    implements $NotificationSettingCopyWith<$Res> {
  factory _$$NotificationSettingImplCopyWith(_$NotificationSettingImpl value,
          $Res Function(_$NotificationSettingImpl) then) =
      __$$NotificationSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInUse, bool isActive, EnumOrderProcess enumOrderProcess});
}

/// @nodoc
class __$$NotificationSettingImplCopyWithImpl<$Res>
    extends _$NotificationSettingCopyWithImpl<$Res, _$NotificationSettingImpl>
    implements _$$NotificationSettingImplCopyWith<$Res> {
  __$$NotificationSettingImplCopyWithImpl(_$NotificationSettingImpl _value,
      $Res Function(_$NotificationSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInUse = null,
    Object? isActive = null,
    Object? enumOrderProcess = null,
  }) {
    return _then(_$NotificationSettingImpl(
      isInUse: null == isInUse
          ? _value.isInUse
          : isInUse // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      enumOrderProcess: null == enumOrderProcess
          ? _value.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
    ));
  }
}

/// @nodoc

class _$NotificationSettingImpl implements _NotificationSetting {
  const _$NotificationSettingImpl(
      {this.isInUse = false,
      required this.isActive,
      required this.enumOrderProcess});

  @override
  @JsonKey()
  final bool isInUse;
  @override
  final bool isActive;
  @override
  final EnumOrderProcess enumOrderProcess;

  @override
  String toString() {
    return 'NotificationSetting(isInUse: $isInUse, isActive: $isActive, enumOrderProcess: $enumOrderProcess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingImpl &&
            (identical(other.isInUse, isInUse) || other.isInUse == isInUse) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.enumOrderProcess, enumOrderProcess) ||
                other.enumOrderProcess == enumOrderProcess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isInUse, isActive, enumOrderProcess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingImplCopyWith<_$NotificationSettingImpl> get copyWith =>
      __$$NotificationSettingImplCopyWithImpl<_$NotificationSettingImpl>(
          this, _$identity);
}

abstract class _NotificationSetting implements NotificationSetting {
  const factory _NotificationSetting(
          {final bool isInUse,
          required final bool isActive,
          required final EnumOrderProcess enumOrderProcess}) =
      _$NotificationSettingImpl;

  @override
  bool get isInUse;
  @override
  bool get isActive;
  @override
  EnumOrderProcess get enumOrderProcess;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSettingImplCopyWith<_$NotificationSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
