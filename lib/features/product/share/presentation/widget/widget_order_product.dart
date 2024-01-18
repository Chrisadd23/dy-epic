import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/cubit_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetOrderProduct extends StatelessWidget {
  const WidgetOrderProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.03),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
              color: AppColors.greyD7D7D7),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    height: constraints.maxHeight * 0.8,
                    width: constraints.maxWidth * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.greyA7A7A7,
                    ),
                    child: const Center(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'bestellen',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(1, 1)),
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(-1, 1)),
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(-1, -1)),
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(1, -1)),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () => context.read<BlocShoppingBasket>().add(
                        const EventShoppingBasket.add(
                            chosenProduct: ChosenProduct(
                                category: '',
                                name: '',
                                price: 0.0,
                                attributes: [],
                                count: 0,
                                productNumber: '',
                                orderType: EnumOrderType.bestellen)),
                      ),
                ),
                InkWell(
                  child: Container(
                    height: constraints.maxHeight * 0.8,
                    width: constraints.maxWidth * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.greyA7A7A7,
                    ),
                    child: const Center(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'anfragen',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(1, 1)),
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(-1, 1)),
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(-1, -1)),
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(1, -1)),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () => context.read<BlocShoppingBasket>().add(
                        const EventShoppingBasket.add(
                            chosenProduct: ChosenProduct(
                                category: '',
                                name: '',
                                price: 0.0,
                                attributes: [],
                                count: 0,
                                productNumber: '',
                                orderType: EnumOrderType.anfragen)),
                      ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
