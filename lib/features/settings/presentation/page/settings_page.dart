import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(providers: [
        BlocProvider<BlocShoppingBasket>.value(
            value: getIt<BlocShoppingBasket>()),
        BlocProvider<LoginCubit>.value(
          value: getIt<LoginCubit>(),
        ),
      ], child: const _SettingsPageStack()),
      showMenuBar: true,
    );
  }
}

class _SettingsPageStack extends StatelessWidget {
  const _SettingsPageStack();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05),
          child: BlocSelector<LoginCubit, LoginState, EntityLoginCustomer?>(
            selector: (state) =>
                state.whenOrNull(loggedIn: (customerEntity) => customerEntity),
            builder: (context, customerEntity) => customerEntity == null
                ? const SizedBox.shrink()
                : ListView(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      _CustomerInformationContainer(
                          attribute: customerEntity.customerNumber,
                          labelText: 'Kundennummer'),
                      if (customerEntity.companyName != null &&
                          customerEntity.companyName!.isNotEmpty) ...[
                        const SizedBox(
                          height: 15,
                        ),
                        _CustomerInformationContainer(
                            attribute: customerEntity.companyName!,
                            labelText: 'Firmenname'),
                      ],
                      if (customerEntity.customerName != null &&
                          customerEntity.customerName!.isNotEmpty) ...[
                        const SizedBox(
                          height: 15,
                        ),
                        _CustomerInformationContainer(
                            attribute: customerEntity.customerName!,
                            labelText: 'Kundenname'),
                      ],
                      if (customerEntity.customerSurname != null &&
                          customerEntity.customerSurname!.isNotEmpty) ...[
                        const SizedBox(
                          height: 15,
                        ),
                        _CustomerInformationContainer(
                            attribute: customerEntity.customerSurname!,
                            labelText: 'Kundennachname'),
                      ],
                      if (customerEntity.email != null &&
                          customerEntity.email!.isNotEmpty) ...[
                        const SizedBox(
                          height: 15,
                        ),
                        _CustomerInformationContainer(
                            attribute: customerEntity.email!,
                            labelText: 'E-Mail'),
                      ],
                      ...[
                        const SizedBox(
                          height: 15,
                        ),
                        const Text('Lieferadresse'),
                        CustomerAddressColumn(customerEntity: customerEntity)
                      ]
                    ],
                  ),
          ),
        ),
        const DialogShoppingBasket()
      ],
    );
  }
}

class _CustomerInformationContainer extends StatelessWidget {
  const _CustomerInformationContainer(
      {required this.attribute, required this.labelText});

  final String attribute;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        child: TextField(
          controller: TextEditingController(text: attribute),
          readOnly: true,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: AppTextStyle.bold16.copyWith(
                decoration: TextDecoration.underline, color: Colors.black),
            contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ));
  }
}

class CustomerAddressColumn extends StatelessWidget {
  const CustomerAddressColumn({super.key, required this.customerEntity});

  final EntityLoginCustomer customerEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: TextField(
              controller: TextEditingController(text: 'attribute'),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Straße',
                labelStyle: AppTextStyle.bold16.copyWith(
                    decoration: TextDecoration.underline, color: Colors.black),
                contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            )),
      ],
    );
  }
}
