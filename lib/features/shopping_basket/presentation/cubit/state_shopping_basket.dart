import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_shopping_basket.freezed.dart';

@freezed
class StateShoppingBasket with _$StateShoppingBasket {
  const factory StateShoppingBasket({List<ChosenProduct>? listChosenProduct}) =
      _StateShoppingBasket;
}

@freezed
class ChosenProduct with _$ChosenProduct {
  const factory ChosenProduct(
      {required String category,
      required String name,
      required double price,
      required List<String> attributes,
      required int count,
      required String productNumber,
      required EnumOrderType orderType}) = _ChosenProduct;
}
