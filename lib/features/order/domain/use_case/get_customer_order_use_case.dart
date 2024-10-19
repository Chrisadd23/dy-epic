import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';

class GetCustomerOrderUseCase {
  GetCustomerOrderUseCase(this._orderRepository);

  final OrderRepository _orderRepository;

  void call({required String customerId}) =>
      _orderRepository.getCustomerOrders(customerId: customerId);
}
