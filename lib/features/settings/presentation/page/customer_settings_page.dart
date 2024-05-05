import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/bottom_sheet.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/widget/save_delivery_address_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomerSettingsPage extends StatelessWidget {
  const CustomerSettingsPage({super.key});

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
            : CustomerSettingsListView(customerEntity: customerEntity),
      ),
    );
  }
}

class CustomerSettingsListView extends HookWidget {
  const CustomerSettingsListView({
    super.key,
    required this.customerEntity,
  });

  final EntityLoginCustomer customerEntity;

  @override
  Widget build(BuildContext context) {
    debugPrint('customerEntity ==> $customerEntity');
    final TextEditingController street =
        useTextEditingController(text: customerEntity.deliveryAddress?.street);
    final TextEditingController zipCode =
        useTextEditingController(text: customerEntity.deliveryAddress?.zipCode);
    final TextEditingController city =
        useTextEditingController(text: customerEntity.deliveryAddress?.city);
    return ListView(
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
              attribute: customerEntity.companyName!, labelText: 'Firmenname'),
        ],
        if (customerEntity.customerName != null &&
            customerEntity.customerName!.isNotEmpty) ...[
          const SizedBox(
            height: 15,
          ),
          _CustomerInformationContainer(
              attribute: customerEntity.customerName!, labelText: 'Kundenname'),
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
              attribute: customerEntity.email!, labelText: 'E-Mail'),
        ],
        const SizedBox(
          height: 15,
        ),
        Text(
          'Adresse',
          style: AppTextStyle.bold18,
        ),
        _CustomerInformationContainer(
            attribute: customerEntity.address.street,
            labelText: AppText.streetAndNumber),
        const SizedBox(
          height: 15,
        ),
        _CustomerInformationContainer(
            attribute: customerEntity.address.zipCode,
            labelText: AppText.zipCode),
        const SizedBox(
          height: 15,
        ),
        _CustomerInformationContainer(
            attribute: customerEntity.address.city, labelText: AppText.city),
        const SizedBox(
          height: 15,
        ),
        Text(
          AppText.deliveryAddress,
          style: AppTextStyle.bold18,
        ),
        CustomerAddressColumn(
          customerEntity: customerEntity,
          textEditingControllerStreet: street,
          textEditingControllerZipCode: zipCode,
          textEditingControllerCity: city,
        ),
        _SaveCustomerSettingsButton(
          customerEntity: customerEntity,
          textEditingControllerStreet: street,
          textEditingControllerZipCode: zipCode,
          textEditingControllerCity: city,
        ),
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
            color: Colors.grey[100]),
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
  const CustomerAddressColumn(
      {super.key,
      required this.customerEntity,
      required this.textEditingControllerStreet,
      required this.textEditingControllerZipCode,
      required this.textEditingControllerCity});

  final EntityLoginCustomer customerEntity;
  final TextEditingController textEditingControllerStreet;
  final TextEditingController textEditingControllerZipCode;
  final TextEditingController textEditingControllerCity;

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
              controller: textEditingControllerStreet,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: AppText.streetAndNumber,
                labelStyle: AppTextStyle.bold16.copyWith(
                    decoration: TextDecoration.underline, color: Colors.black),
                contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            )),
        const SizedBox(
          height: 15,
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: TextField(
              controller: textEditingControllerZipCode,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: AppText.zipCode,
                labelStyle: AppTextStyle.bold16.copyWith(
                    decoration: TextDecoration.underline, color: Colors.black),
                contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            )),
        const SizedBox(
          height: 15,
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: TextField(
              controller: textEditingControllerCity,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: AppText.city,
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

class _SaveCustomerSettingsButton extends HookWidget {
  const _SaveCustomerSettingsButton({
    required this.textEditingControllerStreet,
    required this.textEditingControllerZipCode,
    required this.textEditingControllerCity,
    required this.customerEntity,
  });

  final EntityLoginCustomer customerEntity;
  final TextEditingController textEditingControllerStreet;
  final TextEditingController textEditingControllerZipCode;
  final TextEditingController textEditingControllerCity;

  @override
  Widget build(BuildContext context) {
    final isAbleToPressButton = useState<bool>(true);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height * 0.07),
      child: InkWell(
        onTap: !isAbleToPressButton.value
            ? null
            : () async {
                isAbleToPressButton.value = false;

                final bool? isSuccessful =
                    await SaveDeliveryAddressDialog.showSaveDialog(
                        context: context,
                        entityLoginCustomer: customerEntity,
                        street: textEditingControllerStreet.text,
                        zipCode: textEditingControllerZipCode.text,
                        city: textEditingControllerCity.text);
                if (context.mounted) {
                  if (isSuccessful != null && isSuccessful) {
                    GlobalBottomSheet.showGlobalBottomSheet(
                        context: context,
                        infoText: AppText.successfullySavedDeliveryAddress);
                  } else {
                    textEditingControllerCity.text =
                        customerEntity.deliveryAddress?.city ?? '';
                    textEditingControllerStreet.text =
                        customerEntity.deliveryAddress?.street ?? '';
                    textEditingControllerZipCode.text =
                        customerEntity.deliveryAddress?.zipCode ?? '';
                  }
                  isAbleToPressButton.value = true;
                }
              },
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color:
                    isAbleToPressButton.value ? Colors.white : Colors.grey[350],
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 70,
            width: 200,
            child: Center(
                child: Text(
              AppText.save.toUpperCase(),
              style: AppTextStyle.colorBlackSize20ShadowWhite,
            )),
          ),
        ),
      ),
    );
  }
}
