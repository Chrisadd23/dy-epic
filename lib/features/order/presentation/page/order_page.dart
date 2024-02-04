import 'package:app_flutter_produkt_bestellen/core/extension/date_time_extension.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.now();
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.04,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.orangeF6A440),
                  child: FittedBox(
                    child: Text(
                      'Bestellungen',
                      style: AppTextStyle.colorWhiteSize20ShadowBlack,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all()),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: FittedBox(
                              child: Text(
                                "Bestellnummer",
                                style: TextStyle(
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
                                  border: const Border(
                                    right: BorderSide(),
                                    bottom: BorderSide(),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    dateTime.onlyDateInString,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: ShaderMask(
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                          colors: [Colors.black, Colors.grey],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)
                                      .createShader(Rect.fromLTRB(rect.left,
                                          rect.top, rect.right, rect.bottom));
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: const Border(
                                        left: BorderSide(),
                                        bottom: BorderSide()),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Gesamtpreis',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const DialogShoppingBasket()
      ],
    );
  }
}
