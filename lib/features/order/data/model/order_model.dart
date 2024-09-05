//ignore_for_file: invalid_annotation_target
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
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
    List<OrderModelProduct>? products,
    int? sendDate,
  }) = _OrderModel;

  OrderEntity toEntity() {
    final listProducts = products
        ?.map((e) => Order(
              productNumber: e.productNumber,
              productName: e.productName,
              productType: e.productType,
              productCount: e.productCount,
              productPrice: e.price,
              addedTime: e.addedTime,
            ))
        .toList();
    return OrderEntity(
        id: id!.split('-')[0],
        customerId: customerId!,
        status: status!,
        sendDate: sendDate!,
        listOrderEntity: listProducts!);
  }

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderModelProduct with _$OrderModelProduct {
  @JsonSerializable(explicitToJson: true)
  const factory OrderModelProduct({
    required String productNumber,
    required String productName,
    required int productType,
    required int productCount,
    required double price,
    required int addedTime,
    String? color,
    Size? widthAndHeight,
  }) = _OrderModelProduct;

  factory OrderModelProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderModelProductFromJson(json);
}
