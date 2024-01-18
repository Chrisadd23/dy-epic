import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/cubit_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ShoppingBasketOfferList extends StatelessWidget {
  const ShoppingBasketOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
      builder: (context, state) => LayoutBuilder(
        builder: (context, constraints) => Builder(builder: (context) {
          return BlocListener<BlocShoppingBasket, StateShoppingBasket>(
              listenWhen: (_, cState) => cState.listChosenProduct.isEmpty,
              listener: (context, state) {
                context.pop();
              },
              child: ListView.builder(
                itemCount: state.listChosenProduct.length,
                itemBuilder: (BuildContext context, int index) {
                  return _ShoppingBasketOffer(
                      constraints: constraints,
                      index: index,
                      item: state.listChosenProduct[index]);
                },
              ));
        }),
      ),
    );
  }
}

class _ShoppingBasketOffer extends StatelessWidget {
  const _ShoppingBasketOffer({
    required this.constraints,
    required this.index,
    required this.item,
  });

  final int index;
  final BoxConstraints constraints;
  final ChosenProduct item;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(DateTime.now().toString()),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth * 0.05,
            vertical: constraints.maxHeight * 0.02),
        child: Container(
          height: constraints.maxHeight * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(),
            color: Colors.white,
          ),
          child: _Offer(item: item),
        ),
      ),
      onDismissed: (item) {
        context
            .read<BlocShoppingBasket>()
            .add(EventShoppingBasket.remove(position: index));
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('index', index));
    properties
        .add(DiagnosticsProperty<BoxConstraints>('constraints', constraints));
    properties.add(DiagnosticsProperty<ChosenProduct>('item', item));
  }
}

class _Offer extends StatelessWidget {
  const _Offer({
    super.key,
    required this.item,
  });

  final ChosenProduct item;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: EdgeInsets.symmetric(
            vertical: constraints.maxHeight * 0.01,
            horizontal: constraints.maxWidth * 0.05),
        child: FittedBox(
            child: Center(
                child: Text(
          'number: ${item.productNumber}, name: ${item.name}',
          style: const TextStyle(fontSize: 16),
        ))),
      );
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ChosenProduct>('item', item));
  }
}
