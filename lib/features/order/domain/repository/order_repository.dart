import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:either_dart/either.dart';

abstract class OrderRepository {
  void getCustomerOrders({required String customerId});

  void getRequest({required String customerId});

  void getOwnerOrders();

  void clearOrderList();

  void clearRequestList();

  List<OrderModel> get listOrderModel;

  List<OrderModel> get listRequestModel;

  Stream<List<OrderModel>> get listOrderStream;

  Stream<List<OrderModel>> get listRequestStream;

  Stream<Failure> get failure;

  Future<Either<Failure, bool>> updateOrderStatus(
      {required String orderID, required EnumOrderProcess orderProcess});
}
