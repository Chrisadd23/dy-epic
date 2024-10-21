import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';
import 'package:either_dart/either.dart';

class UpdateOrderStatusUseCase {
  const UpdateOrderStatusUseCase(this._orderRepository);

  final OrderRepository _orderRepository;

  Future<Either<Failure, bool>> call(
          {required String orderID, required EnumOrderProcess orderProcess}) =>
      _orderRepository.updateOrderStatus(
          orderID: orderID, orderProcess: orderProcess);
}
