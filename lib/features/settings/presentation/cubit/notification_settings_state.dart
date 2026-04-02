import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings_state.freezed.dart';

@freezed
abstract class NotificationSettingsState with _$NotificationSettingsState {
  const factory NotificationSettingsState({
    @Default(false) bool isInProcess,
    @Default(false) bool areAllActive,
    @Default([]) List<NotificationSetting> listNotificationSetting,
    Failure? failure,
  }) = _NotificationSettingsState;
}

@freezed
abstract class NotificationSetting with _$NotificationSetting {
  const factory NotificationSetting({
    required bool isActive,
    required EnumOrderProcess enumOrderProcess,
  }) = _NotificationSetting;
}
