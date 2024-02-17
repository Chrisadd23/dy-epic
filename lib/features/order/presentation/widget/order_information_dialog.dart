import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderInformationDialog extends StatelessWidget {
  const OrderInformationDialog._({required this.productInformationList});

  final List<ProductInformation> productInformationList;

  static showOrderInformationDialog(
          {required BuildContext context,
          required List<ProductInformation> productInformationList}) =>
      showDialog(
          context: context,
          builder: (context) => OrderInformationDialog._(
              productInformationList: productInformationList));

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 600, minHeight: 0),
          child: SingleChildScrollView(
            child: ListBody(
              children: productInformationList
                  .map(
                    (productInformation) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                productInformation.productTitle,
                                style: const TextStyle(fontSize: 17),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'Einzelpreis: ${NumberFormat.currency(locale: 'de_DE', symbol: '€', decimalDigits: 2).format(productInformation.price)}'),
                                  Text('Anzahl: ${productInformation.count}')
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'Produktnummer: ${productInformation.productNumber}'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<ProductInformation>(
        'productInformationList', productInformationList));
  }
}
