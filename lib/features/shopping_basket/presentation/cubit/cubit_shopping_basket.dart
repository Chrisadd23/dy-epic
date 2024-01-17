import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:bloc/bloc.dart';

class CubitShoppingBasket extends Cubit<StateShoppingBasket> {
  CubitShoppingBasket() : super(const StateShoppingBasket());

  Future<void> loadBasket() async {}

  Future<void> addProduct(String queryAttributes) async {}

  void deleteOrderProduct(int index) {}

  void changeOrderProduct(int index) {}

  void sortOrder(EnumShoppingBasketOrder shoppingBasketOrder) {}
}
