import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationSettingsCubit extends Cubit<NotificationSettingsState> {
  NotificationSettingsCubit(this._loginRepository)
      : super(const NotificationSettingsState());

  final LoginRepository _loginRepository;

  void loadNotifications() {
    if (_loginRepository.customer != null) {
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
    emit(state.copyWith(isInProcess: true));
    final currentList =
        List<NotificationSetting>.of(state.listNotificationSetting);
    final newList = currentList
        .map((e) => e.copyWith(
              isActive: toggleAll,
            ))
        .toList();

    if (_loginRepository.customer != null) {
      final newNotificationState = await _loginRepository.toggleNotifications(
        newNotificationSettings: newList,
        customerNumber: _loginRepository.customer!.customerNumber,
      );
      newNotificationState.fold((failure) {
        emit(state.copyWith(
            isInProcess: false,
            listNotificationSetting: currentList,
            areAllActive: !toggleAll,
            failure: failure));
      }, (success) {
        emit(state.copyWith(
            isInProcess: false,
            areAllActive: toggleAll,
            listNotificationSetting: newList));
      });
    } else {
      emit(state.copyWith(
        isInProcess: true,
      ));
    }
  }

  void deleteFailure() {
    emit(state.copyWith(failure: null));
  }

  Future<void> toggle(
      {required bool toggle, required EnumOrderProcess orderProcess}) async {
    emit(state.copyWith(isInProcess: true));
    final currentList =
        List<NotificationSetting>.of(state.listNotificationSetting);
    final newList = currentList
        .map((notification) => notification.enumOrderProcess == orderProcess
            ? notification.copyWith(isActive: toggle)
            : notification)
        .toList();

    if (_loginRepository.customer != null) {
      final newNotificationState = await _loginRepository.toggleNotifications(
        newNotificationSettings: newList,
        customerNumber: _loginRepository.customer!.customerNumber,
      );
      newNotificationState.fold((failure) {
        emit(state.copyWith(
            isInProcess: false,
            listNotificationSetting: currentList,
            failure: failure,
            areAllActive: _areAllNotificationsActivated(
                listNotificationSetting: currentList)));
      }, (success) {
        emit(state.copyWith(
            isInProcess: false,
            areAllActive:
                _areAllNotificationsActivated(listNotificationSetting: newList),
            listNotificationSetting: newList));
      });
    } else {
      emit(state.copyWith(
        isInProcess: false,
      ));
    }
  }

  bool _areAllNotificationsActivated(
      {required List<NotificationSetting> listNotificationSetting}) {
    return !listNotificationSetting.any((element) => !element.isActive);
  }
}
