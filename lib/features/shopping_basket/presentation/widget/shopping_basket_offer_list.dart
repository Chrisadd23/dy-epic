import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/cubit_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingBasketOfferList extends StatelessWidget {
  const ShoppingBasketOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
      builder: (context, state) => LayoutBuilder(
        builder: (context, constraints) => Builder(builder: (context) {
          return ListView.builder(
            itemCount: state.listChosenProduct.length,
            itemBuilder: (BuildContext context, int index) {
              return _ShoppingBasketOffer(
                  constraints: constraints, index: index);
            },
          );
        }),
      ),
    );
  }
}

class _ShoppingBasketOffer extends StatelessWidget {
  const _ShoppingBasketOffer({
    required this.constraints,
    required this.index,
  });

  final int index;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BlocShoppingBasket, StateShoppingBasket, ChosenProduct>(
        selector: (state) => state.listChosenProduct[index],
        builder: (context, chosenProduct) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth * 0.05,
                vertical: constraints.maxHeight * 0.02),
            child: Container(
              height: constraints.maxHeight * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
                color: Colors.white,
              ),
              child: Expanded(
                  child: Center(
                      child: Text(
                'index: index, name: ${chosenProduct.name}',
                style: const TextStyle(fontSize: 16),
              ))),
            ),
          );
        });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('index', index));
    properties
        .add(DiagnosticsProperty<BoxConstraints>('constraints', constraints));
  }
}
