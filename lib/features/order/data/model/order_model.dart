//ignore_for_file: invalid_annotation_target
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderModel({
    String? id,
    @JsonKey(name: 'userId') String? customerId,
    int? status,
    List<Order>? products,
    int? sendDate,
  }) = _OrderModel;

  OrderEntity toEntity() {
    return OrderEntity(
        id: id!.split('-')[0],
        customerId: customerId!,
        status: status!,
        sendDate: sendDate!,
        listOrderEntity: products ?? []);
  }

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class Order with _$Order {
  const Order._();

  @JsonSerializable(explicitToJson: true)
  const factory Order({
    required CategoryEntity categoryEntity,
    required int productCount,
    required double completeAmount,
    required int addedTime,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
