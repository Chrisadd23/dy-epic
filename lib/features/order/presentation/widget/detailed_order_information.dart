import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:flutter/material.dart';

class DetailedOrderInformation extends StatelessWidget {
  const DetailedOrderInformation(
      {super.key, required this.informationTitle, required this.orderEntity});

  final String informationTitle;
  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: ListView(
            children: [
              Text(
                informationTitle,
                style: AppTextStyle.colorBlackSize20ShadowWhite
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                        text: 'App Bearbeitungs ID: ',
                        style: AppTextStyle.bold14,
                        children: <TextSpan>[
                          TextSpan(
                              text: orderEntity.id,
                              style: AppTextStyle.regular12)
                        ]),
                  ),
                  Text(orderEntity.orderProcess.information)
                ],
              )
            ],
          ),
        ),
        const DialogShoppingBasket(),
      ],
    );
  }
}
