import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SaveDeliveryAddressDialog extends StatelessWidget {
  const SaveDeliveryAddressDialog._(
      {required this.entityLoginCustomer,
      required this.street,
      required this.zipCode,
      required this.city});

  final EntityLoginCustomer entityLoginCustomer;
  final String street;
  final String zipCode;
  final String city;

  static showSaveDialog(
          {required BuildContext context,
          required EntityLoginCustomer entityLoginCustomer,
          required String street,
          required String zipCode,
          required String city}) =>
      showDialog(
          useRootNavigator: true,
          context: context,
          builder: (context) => Dialog(
              surfaceTintColor: Colors.white,
              insetPadding: EdgeInsets.symmetric(
                  vertical: MediaQuery.sizeOf(context).height * 0.1,
                  horizontal: MediaQuery.sizeOf(context).width * 0.1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SaveDeliveryAddressDialog._(
                entityLoginCustomer: entityLoginCustomer,
                street: street,
                zipCode: zipCode,
                city: city,
              )));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sind Sie sicher, dass diese Lieferadresse gespeichert werden soll?',
            style: AppTextStyle.bold16,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text('Straße & Hausnummer:'),
          Text(street),
          const SizedBox(
            height: 5,
          ),
          const Text('Postleitzahl:'),
          Text(zipCode),
          const SizedBox(
            height: 5,
          ),
          const Text('Stadt:'),
          Text(city),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => context.pop(false),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    child: Center(
                      child: Text(
                        'Abbrechen'.toUpperCase(),
                        style: AppTextStyle.bold18
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    final newCustomerEntity = await getIt<SettingsCubit>()
                        .saveDeliveryAddress(
                            customerEntity: entityLoginCustomer,
                            street: street,
                            zipCode: zipCode,
                            city: city);

                    if (context.mounted) {
                      if (newCustomerEntity != null) {
                        getIt<LoginCubit>().updateCustomer(newCustomerEntity);
                        context.pop(true);
                      } else {
                        context.pop(false);
                      }

                      debugPrint("switch isAbleToPressButton to true");
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Speichern'.toUpperCase(),
                        style: AppTextStyle.bold18.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
