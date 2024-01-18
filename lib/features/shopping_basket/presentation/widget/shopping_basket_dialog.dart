import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/cubit_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class DialogShoppingBasket extends StatelessWidget {
  const DialogShoppingBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15),
      child: Align(
        alignment: Alignment.topRight,
        child: InkWell(
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    child: SvgPicture.asset(
                        Assets.appComponents.svg.shoppingBasket),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 20),
                child: Align(
                    alignment: Alignment.topRight,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child:
                          BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
                              builder: (context, state) {
                        return Text(
                          state.listChosenProduct.length.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                BoxShadow(offset: Offset(0, 1)),
                                BoxShadow(offset: Offset(0, -1)),
                                BoxShadow(offset: Offset(1, 0)),
                                BoxShadow(offset: Offset(-1, 0)),
                              ],
                              color: Colors.white),
                        );
                      }),
                    )),
              )
            ],
          ),
          onTap: () {
            debugPrint("onTap");
            context.read<BlocShoppingBasket>().add(
                const EventShoppingBasket.add(
                    chosenProduct: ChosenProduct(
                        category: '',
                        name: '',
                        price: 0.0,
                        attributes: [],
                        count: 0,
                        productNumber: '',
                        orderType: EnumOrderType.anfragen)));
          },
        ),
      ),
    );
  }
}

class _ShoppingBasketDialog extends StatelessWidget {
  const _ShoppingBasketDialog._();

  static show({required BuildContext context}) => showDialog(
      context: context, builder: (_) => const _ShoppingBasketDialog._());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: const _ShoppingBasketWidget());
  }
}

class _ShoppingBasketWidget extends StatelessWidget {
  const _ShoppingBasketWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
        builder: (context, state) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.1,
            vertical: MediaQuery.sizeOf(context).height * 0.15),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
        ),
      );
    });
  }
}
