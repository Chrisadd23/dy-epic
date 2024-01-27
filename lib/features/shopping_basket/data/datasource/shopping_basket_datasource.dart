import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:flutter/material.dart';

abstract class ShoppingBasketDataSource {
  Future<void> sendOrder({
    required List<ChosenProduct> chosenProductList,
    required DateTime dateTime,
    required double amount,
  });
}

class ShoppingBasketDataSourceImplementation extends ShoppingBasketDataSource {
  @override
  Future<void> sendOrder(
      {required List<ChosenProduct> chosenProductList,
      required DateTime dateTime,
      required double amount}) async {
    debugPrint("amount ==> $amount");
  }
}
