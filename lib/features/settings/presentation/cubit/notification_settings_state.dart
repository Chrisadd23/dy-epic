import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings_state.freezed.dart';

@freezed
class NotificationSettingsState with _$NotificationSettingsState {
  const factory NotificationSettingsState({
    @Default(false) bool areAllActive,
    @Default([]) List<NotificationSetting> listNotificationSetting,
    Failure? failure,
  }) = _NotificationSettingsState;
}

@freezed
class NotificationSetting with _$NotificationSetting {
  const factory NotificationSetting({
    @Default(false) bool isInUse,
    required bool isActive,
    required EnumOrderProcess enumOrderProcess,
  }) = _NotificationSetting;
}
