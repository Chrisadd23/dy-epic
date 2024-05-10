import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';

extension ListShoppingBasketProduct on List<ShoppingBasketProduct> {
  List<ShoppingBasketProduct> addAndSortProduct(
          {required ShoppingBasketProduct product}) =>
      List<ShoppingBasketProduct>.of(this)
        ..add(product)
        ..sort((a, b) => b.addedTime.compareTo(a.addedTime));

  List<ShoppingBasketProduct> replaceAndSortProduct(
      {required ShoppingBasketProduct product}) {
    final newList = List<ShoppingBasketProduct>.of(this);
    final index =
        newList.indexWhere((element) => element.addedTime == product.addedTime);
    newList[index] = product;
    newList.sort((a, b) => b.addedTime.compareTo(a.addedTime));
    return newList;
  }
}
