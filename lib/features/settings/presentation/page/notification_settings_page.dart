import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationSettingsPage extends StatelessWidget {
  const NotificationSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (context) => SettingsCubit(getIt()),
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
            : NotificationSettingsListView(customerEntity: customerEntity),
      ),
    );
  }
}

class NotificationSettingsListView extends StatelessWidget {
  const NotificationSettingsListView({super.key, required this.customerEntity});

  final EntityLoginCustomer customerEntity;

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        DialogShoppingBasket(),
      ],
    );
  }
}
