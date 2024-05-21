import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:flutter/material.dart';

class OrderProcessStateInformation extends StatelessWidget {
  const OrderProcessStateInformation(
      {super.key, required this.productOrder, required this.category});

  final OrderEntity productOrder;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FittedBox(
                  child: Text(
                    '$category ${productOrder.orderProcess.information}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          productOrder.orderProcess == EnumOrderProcess.created
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(
                    productOrder.orderProcess.icon,
                    color: productOrder.orderProcess.processColor,
                    shadows: const [
                      Shadow(offset: Offset(1, 0)),
                      Shadow(offset: Offset(-1, 0)),
                      Shadow(offset: Offset(0, 1)),
                      Shadow(offset: Offset(0, -1)),
                    ],
                    size: 25,
                  ),
                ),
        ],
      ),
    );
  }
}
