import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_shopping_basket.freezed.dart';

@freezed
class EventShoppingBasket with _$EventShoppingBasket {
  const factory EventShoppingBasket.add(
      {required ChosenProduct chosenProduct}) = _Add;

  const factory EventShoppingBasket.change({required int position}) = _Change;

  const factory EventShoppingBasket.remove({required int position}) = _Remove;

  const factory EventShoppingBasket.orderList(
      {required EnumShoppingBasketOrder orderList}) = _OrderList;
}
