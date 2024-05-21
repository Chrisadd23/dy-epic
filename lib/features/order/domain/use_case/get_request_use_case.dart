import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';

class GetRequestUseCase {
  GetRequestUseCase(this._orderRepository);

  final OrderRepository _orderRepository;

  void call({required String customerId}) =>
      _orderRepository.getRequest(customerId: customerId);
}
