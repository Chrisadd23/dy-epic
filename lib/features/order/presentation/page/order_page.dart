import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.04,
              width: MediaQuery.sizeOf(context).width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.orangeF6A440),
              child: FittedBox(
                child: Text(
                  "Bestellungen",
                  style: AppTextStyle.colorWhiteSize20ShadowBlack,
                ),
              ),
            ),
          ),
        ),
        const DialogShoppingBasket()
      ],
    );
  }
}
