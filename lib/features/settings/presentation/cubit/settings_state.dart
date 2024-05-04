import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

enum NotificationType {
  orderInWork,
  orderCanceled,
  orderFinished,
  requestInWork,
  requestCanceled,
  requestFinished,
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isSaving,
    Notifications? notifications,
  }) = _SettingsState;
}

@freezed
class Notifications with _$Notifications {
  const factory Notifications({
    required bool activated,
    required NotificationType notificationType,
  }) = _Notifications;
}
