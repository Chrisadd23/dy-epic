import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../product/share/domain/entity/entity_product.dart';

part 'state_shopping_basket.freezed.dart';

@freezed
class StateShoppingBasket with _$StateShoppingBasket {
  const factory StateShoppingBasket(
      {required List<ChosenProduct> listChosenProduct}) = _StateShoppingBasket;
}

@freezed
class ChosenProduct with _$ChosenProduct {
  const factory ChosenProduct(
      {required String name,
      required int count,
      required String productNumber,
      required EnumOrderType orderType,
      required EntityProduct entityProduct}) = _ChosenProduct;
}
