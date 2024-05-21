import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';

class GetOrderUseCase {
  GetOrderUseCase(this._orderRepository);

  final OrderRepository _orderRepository;

  void call({required String customerId}) =>
      _orderRepository.getOrders(customerId: customerId);
}
