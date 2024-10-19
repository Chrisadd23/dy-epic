import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';

class GetOwnerOrderUseCase {
  const GetOwnerOrderUseCase(this._orderRepository);

  final OrderRepository _orderRepository;

  void call() => _orderRepository.getOwnerOrders();
}
