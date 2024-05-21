import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationSettingsCubit extends Cubit<NotificationSettingsState> {
  NotificationSettingsCubit(this._loginRepository)
      : super(const NotificationSettingsState());

  final LoginRepository _loginRepository;

  void loadNotifications() {
    if (_loginRepository.customer != null) {
      debugPrint(
          "notifications ==> ${_loginRepository.customer?.notifications}");
      emit(NotificationSettingsState(
        areAllActive: _loginRepository.customer!.areAllNotificationsActive,
        listNotificationSetting: _loginRepository.customer!.notifications
            .map(
              (userNotification) => NotificationSetting(
                  isActive: userNotification.active,
                  enumOrderProcess: userNotification.orderProcessTyp),
            )
            .toList(),
      ));
    }
  }

  Future<void> toggleAll({required bool toggleAll}) async {
    final currentList =
        List<NotificationSetting>.of(state.listNotificationSetting);
    debugPrint("currentList ==> $currentList\n\n");
    final newList = currentList
        .map((e) => e.copyWith(isActive: toggleAll, isInUse: true))
        .toList();
    debugPrint("still currentList ==> $currentList");
    emit(state.copyWith(
        listNotificationSetting: newList, areAllActive: toggleAll));
    if (_loginRepository.customer != null) {
      final newNotificationState = await _loginRepository.toggleNotifications(
        newNotificationSettings: newList,
        customerNumber: _loginRepository.customer!.customerNumber,
      );
      newNotificationState.fold((failure) {
        debugPrint("left ==> $failure");
        emit(state.copyWith(
            listNotificationSetting: currentList,
            areAllActive: !toggleAll,
            failure: failure));
      }, (success) {
        emit(state.copyWith(
            listNotificationSetting:
                newList.map((e) => e.copyWith(isInUse: false)).toList()));
      });
    }
  }

  void deleteFailure() {
    emit(state.copyWith(failure: null));
  }

  Future<void> toggle(
      {required bool toggle, required EnumOrderProcess orderProcess}) async {
    final currentList =
        List<NotificationSetting>.of(state.listNotificationSetting);
    debugPrint("currentList ==> $currentList\n\n");
    final newList = currentList
        .map((notification) => notification.enumOrderProcess == orderProcess
            ? notification.copyWith(isActive: toggle, isInUse: true)
            : notification)
        .toList();

    debugPrint("still currentList ==> $currentList");
    emit(state.copyWith(
        listNotificationSetting: newList,
        areAllActive:
            _areAllNotificationsActivated(listNotificationSetting: newList)));
    if (_loginRepository.customer != null) {
      final newNotificationState = await _loginRepository.toggleNotifications(
        newNotificationSettings: newList,
        customerNumber: _loginRepository.customer!.customerNumber,
      );
      newNotificationState.fold((failure) {
        debugPrint("left ==> $failure");
        emit(state.copyWith(
            listNotificationSetting: currentList,
            failure: failure,
            areAllActive: _areAllNotificationsActivated(
                listNotificationSetting: currentList)));
      }, (success) {
        emit(state.copyWith(
            areAllActive:
                _areAllNotificationsActivated(listNotificationSetting: newList),
            listNotificationSetting: newList
                .map((notification) =>
                    notification.enumOrderProcess == orderProcess
                        ? notification.copyWith(isInUse: false)
                        : notification)
                .toList()));
      });
    }
  }

  bool _areAllNotificationsActivated(
      {required List<NotificationSetting> listNotificationSetting}) {
    return !listNotificationSetting.any((element) => !element.isActive);
  }
}
