import 'package:app_flutter_produkt_bestellen/core/extension/date_time_extension.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/order_process_state_information.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderInformation extends StatelessWidget {
  const OrderInformation({
    super.key,
    required this.productOrder,
    required this.category,
  });

  final OrderEntity productOrder;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all()),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: FittedBox(
                child: Text(
                  productOrder.id,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border:
                          const Border(bottom: BorderSide(), top: BorderSide()),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        DateTime.fromMillisecondsSinceEpoch(
                                productOrder.sendDate)
                            .onlyDateInString,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                              colors: [Colors.black, Colors.grey],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)
                          .createShader(Rect.fromLTRB(
                              rect.left, rect.top, rect.right, rect.bottom));
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: const Border(
                            bottom: BorderSide(), top: BorderSide()),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'de_DE',
                                  symbol: '€',
                                  decimalDigits: 2)
                              .format(productOrder.completeAmount),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            OrderProcessStateInformation(
                productOrder: productOrder, category: category)
          ],
        ),
      ),
    );
  }
}
