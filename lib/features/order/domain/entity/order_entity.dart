import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
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
        0,
        (previousValue, element) => previousValue + element.completeAmount,
      );

  EnumOrderProcess get orderProcess =>
      EnumOrderProcess.values.where((element) => element.index == status).first;
}
