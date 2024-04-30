import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket//presentation/bloc/state_shopping_basket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_shopping_basket.freezed.dart';

@freezed
class EventShoppingBasket with _$EventShoppingBasket {
  const factory EventShoppingBasket.add(
      {required ChosenProduct chosenProduct, int? index}) = _Add;

  const factory EventShoppingBasket.change(
      {required int position, required String location}) = _Change;

  const factory EventShoppingBasket.remove({required int position}) = _Remove;

  const factory EventShoppingBasket.orderList(
      {required EnumSortProductOrder orderList}) = _OrderList;

  const factory EventShoppingBasket.send({required String customerNumber}) =
      _Send;

  const factory EventShoppingBasket.clear() = _Clear;

  const factory EventShoppingBasket.deleteFailureMessage() =
      _DeleteFailureMessage;
}
