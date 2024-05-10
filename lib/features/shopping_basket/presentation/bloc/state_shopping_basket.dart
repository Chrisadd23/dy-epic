import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_shopping_basket.freezed.dart';

@freezed
class StateShoppingBasket with _$StateShoppingBasket {
  const StateShoppingBasket._();

  const factory StateShoppingBasket(
      {required List<ShoppingBasketProduct> orderChosenProductList,
      required List<ShoppingBasketProduct> requestChosenProductList,
      Failure? failure}) = _StateShoppingBasket;

  EnumOrderType getEnumOrderType({required int timeIndex}) {
    return orderChosenProductList
            .any((element) => element.addedTime == timeIndex)
        ? EnumOrderType.bestellung
        : EnumOrderType.anfrage;
  }
}
