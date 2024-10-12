import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/bottom_sheet.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_state.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NotificationSettingsPage extends StatelessWidget {
  const NotificationSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationSettingsCubit>(
      create: (context) =>
          NotificationSettingsCubit(getIt())..loadNotifications(),
      child: const _SettingsPageStack(),
    );
  }
}

class _SettingsPageStack extends StatelessWidget {
  const _SettingsPageStack();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05),
      child: BlocSelector<LoginCubit, LoginState, EntityLoginCustomer?>(
        selector: (state) => state.whenOrNull(loggedIn: (customerEntity) {
          return customerEntity;
        }),
        builder: (context, customerEntity) => customerEntity == null
            ? const SizedBox.shrink()
            : _NotificationSettingsColumn(customerEntity: customerEntity),
      ),
    );
  }
}

class _NotificationSettingsColumn extends StatelessWidget {
  const _NotificationSettingsColumn({required this.customerEntity});

  final EntityLoginCustomer customerEntity;

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationSettingsCubit, NotificationSettingsState>(
      listenWhen: (_, cState) => cState.failure != null,
      listener: (context, state) {
        GlobalBottomSheet.showGlobalBottomSheet(
            context: context,
            infoText: state.failure?.getFailureMessage ?? '',
            errorIcon: true);
        context.read<NotificationSettingsCubit>().deleteFailure();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            AppText.pushNotification,
            style: AppTextStyle.colorBlackSize20ShadowWhite
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[100]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: FittedBox(
                    child: Text(
                      AppText.allPushNotification,
                      style: AppTextStyle.bold18,
                    ),
                  ),
                ),
                const _NotificationSwitchAll(),
              ],
            ),
          ),
          BlocSelector<LoginCubit, LoginState, List<UserNotification>>(
              selector: (state) => state.customer?.notifications ?? [],
              builder: (context, notifications) {
                if (notifications.isEmpty) {
                  return const SizedBox.shrink();
                } else {
                  return const _NotificationSettingsListView();
                }
              })
        ],
      ),
    );
  }
}

class _NotificationSwitchAll extends HookWidget {
  const _NotificationSwitchAll();

  @override
  Widget build(BuildContext context) {
    final ValueNotifier buttonActiv = useState(false);
    return BlocSelector<NotificationSettingsCubit, NotificationSettingsState,
            bool>(
        selector: (state) => state.areAllActive,
        builder: (context, active) {
          debugPrint("areAll Activated ==> $active");
          return Switch(
            value: active,
            onChanged: buttonActiv.value
                ? null
                : (value) async {
                    debugPrint("value ==> $value --- allActive ==> $active");
                    await context
                        .read<NotificationSettingsCubit>()
                        .toggleAll(toggleAll: value)
                        .whenComplete(() => buttonActiv.value = false);
                  },
            activeColor: Colors.green,
            inactiveTrackColor: Colors.transparent,
            hoverColor: Colors.blue,
          );
        });
  }
}

class _NotificationSettingsListView extends StatelessWidget {
  const _NotificationSettingsListView();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NotificationSettingsCubit, NotificationSettingsState,
            List<NotificationSetting>>(
        selector: (state) => state.listNotificationSetting,
        builder: (context, state) => Expanded(
              child: ListView.builder(
                itemCount: state.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[100]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              '${AppText.orderAndRequest} ${state[index].enumOrderProcess.information}',
                              style: AppTextStyle.bold16,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Switch(
                            value: state[index].isActive,
                            onChanged: state[index].isInUse
                                ? null
                                : (value) async {
                                    debugPrint(
                                        "value ==> $value --- allActive ==> ${state[index].isActive}");
                                    await context
                                        .read<NotificationSettingsCubit>()
                                        .toggle(
                                            toggle: value,
                                            orderProcess:
                                                state[index].enumOrderProcess);
                                  },
                            activeColor: Colors.green,
                            inactiveTrackColor: Colors.transparent,
                            hoverColor: Colors.blue,
                          )
                        ],
                      ));
                },
              ),
            ));
  }
}
