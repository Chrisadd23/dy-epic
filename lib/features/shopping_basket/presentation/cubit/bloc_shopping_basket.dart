import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BlocShoppingBasket
    extends Bloc<EventShoppingBasket, StateShoppingBasket> {
  BlocShoppingBasket()
      : super(const StateShoppingBasket(listChosenProduct: [])) {
    on<EventShoppingBasket>((event, emitState) {
      debugPrint("event ==> $event");
      event.when(
          add: (product) {
            debugPrint("product ==> ${product.toString()}");
            List<ChosenProduct> newList = List.from(state.listChosenProduct);
            newList.add(product);
            final newState = state.copyWith(listChosenProduct: newList);
            emitState(newState);
          },
          change: (index) {
            final order = state.listChosenProduct.elementAt(index);
            debugPrint("change");
            debugPrint(getIt<GoRouter>().location.split('/').last.toString());

            getIt<GoRouter>().pop((order: order, index: index));
            debugPrint("continue Change");
          },
          remove: (index) {
            debugPrint("remove $index");
            List<ChosenProduct> newList = List.from(state.listChosenProduct);
            newList.removeAt(index);

            final newState = state.copyWith(listChosenProduct: newList);
            debugPrint("newState ==> ${newState.toString()}");
            emitState(newState);
          },
          orderList: (enumOrder) {});
    });
  }

/*
  Future<void> loadBasket() async {}

  Future<void> addProduct(String queryAttributes) async {}

  void deleteOrderProduct(int index) {}

  void changeOrderProduct(int index) {}

  void sortOrder(EnumShoppingBasketOrder shoppingBasketOrder) {}

  */
}
