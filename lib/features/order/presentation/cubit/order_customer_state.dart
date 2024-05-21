import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_customer_state.freezed.dart';

@freezed
class OrderCustomerState with _$OrderCustomerState {
  const OrderCustomerState._();

  const factory OrderCustomerState.initialise() = _Initialise;

  const factory OrderCustomerState.loading() = _Loading;

  const factory OrderCustomerState.success({
    @Default(EnumSortProductOrder.sortDate) EnumSortProductOrder sortType,
    required List<OrderEntity>? orderList,
  }) = _Success;

  const factory OrderCustomerState.failure({required Failure failure}) =
      _Failure;

  bool get areAllHiddenOrDoNotExist => maybeWhen(
      orElse: () => true,
      success: (_, orderList) {
        return orderList == null || !orderList.any((element) => !element.hide);
      });
}

@freezed
class ProductOrder with _$ProductOrder {
  const factory ProductOrder({
    required String orderNumber,
    required double amount,
    required EnumOrderProcess enumOrderProcess,
    required DateTime date,
    required List<ProductInformation> productInformationList,
    @Default(false) bool? hide,
  }) = _ProductOrder;
}

@freezed
class ProductInformation with _$ProductInformation {
  const factory ProductInformation({
    required int count,
    required double price,
    required String productNumber,
    required String productTitle,
  }) = _ProductInformation;
}
