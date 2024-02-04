import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.freezed.dart';

@freezed
class OrderCustomerState with _$OrderCustomerState {
  const factory OrderCustomerState({
    required List<Order> orderList,
  }) = _OrderCustomerState;
}

@freezed
class Order with _$Order {
  const factory Order({
    required String orderNumber,
    required double amount,
    required bool inWork,
    required bool finished,
    required bool canceledByAdmin,
    required bool canceledByCustomer,
    required List<ProductInformation> productInformationList,
  }) = _Order;
}

@freezed
class ProductInformation with _$ProductInformation {
  const factory ProductInformation({
    required bool request,
    required int count,
    required double price,
    required String productNumber,
    required String productTitle,
  }) = _ProductInformation;
}
