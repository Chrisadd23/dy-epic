import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const OrderEntity._();

  const factory OrderEntity(
      {required String id,
      required String customerId,
      required int status,
      required List<Order> listOrderEntity,
      required int sendDate,
      @Default(false) bool hide}) = _OrderEntity;

  DateTime? get createdDate => DateTime.fromMillisecondsSinceEpoch(sendDate);

  double get completeAmount => listOrderEntity.fold(
      0, (previousValue, element) => previousValue + element.orderAmount);

  EnumOrderProcess get orderProcess => EnumOrderProcess.values
      .where((element) => element.sortIndex == status)
      .first;
}

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    required String productNumber,
    required String productName,
    required int productType,
    required int productCount,
    required double productPrice,
    required int addedTime,
    String? color,
    Size? widthAndHeight,
  }) = _Order;

  double get orderAmount => productPrice * productCount;
}
