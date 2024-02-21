import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OrderStateInformation extends StatelessWidget {
  const OrderStateInformation(
      {super.key, required this.productOrder, required this.category});

  final ProductOrder productOrder;
  final String category;

  @override
  Widget build(BuildContext context) {
    final icon = productOrder.enumOrderProcess == EnumOrderProcess.finished
        ? Icons.done
        : productOrder.enumOrderProcess == EnumOrderProcess.canceledByAdmin ||
                productOrder.enumOrderProcess ==
                    EnumOrderProcess.canceledByCustomer
            ? Icons.cancel_outlined
            : null;
    final color = productOrder.enumOrderProcess == EnumOrderProcess.finished
        ? Colors.green
        : Colors.red;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                '$category ${productOrder.enumOrderProcess.information}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Icon(
                icon,
                color: color,
                shadows: const [
                  Shadow(offset: Offset(1, 0)),
                  Shadow(offset: Offset(-1, 0)),
                  Shadow(offset: Offset(0, 1)),
                  Shadow(offset: Offset(0, -1)),
                ],
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties
        .add(DiagnosticsProperty<ProductOrder>('productOrder', productOrder));
    properties.add(StringProperty('category', category));
  }
}
