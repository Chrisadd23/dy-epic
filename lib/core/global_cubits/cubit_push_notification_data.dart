import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPushNotificationData extends Cubit<PushNotificationData?> {
  CubitPushNotificationData() : super(null);

  void addNotificationData({OrderEntity? orderEntity}) {
    emit(PushNotificationData(order: orderEntity));
  }

  void clear() => emit(null);
}

class PushNotificationData {
  final OrderEntity? order;

  const PushNotificationData({
    this.order,
  });
}
