import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_customer_state.freezed.dart';

@freezed
class OrderCustomerState with _$OrderCustomerState {
  const factory OrderCustomerState.loading() = _Loading;

  const factory OrderCustomerState.success({
    required List<ProductOrder>? orderList,
  }) = _Success;

  const factory OrderCustomerState.failure({required Failure failure}) =
      _Failure;
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
