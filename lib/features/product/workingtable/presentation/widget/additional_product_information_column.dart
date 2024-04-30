import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdditionalProductInformationColumn extends StatelessWidget {
  const AdditionalProductInformationColumn(
      {super.key, this.attributes, required this.listAdditionalAttributes});

  final List<String>? attributes;
  final List<AdditionalAttributes>? listAdditionalAttributes;

  @override
  Widget build(BuildContext context) {
    return attributes == null || attributes!.isEmpty
        ? const SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.1,
                vertical: MediaQuery.sizeOf(context).height * 0.03),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Produktinformationen",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (listAdditionalAttributes != null &&
                      listAdditionalAttributes!.isNotEmpty)
                    ...listAdditionalAttributes!.map((attribute) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Text(attribute.name)),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    NumberFormat.currency(
                                            locale: 'de_DE',
                                            symbol: '€',
                                            decimalDigits: 2)
                                        .format(attribute.amount)
                                        .toString(),
                                  ),
                                ],
                              ),
                              const Divider(),
                            ],
                          ),
                        )),
                  ...attributes!.map((info) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(child: Text(info)),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
  }
}
