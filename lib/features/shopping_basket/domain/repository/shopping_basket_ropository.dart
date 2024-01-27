import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';

abstract class ShoppingBasketRepository {
  Future<void> sendOrder({
    required List<ChosenProduct> chosenProductList,
    required DateTime dateTime,
    required double amount,
  });
}
