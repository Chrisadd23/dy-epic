import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';

abstract class OrderRepository {
  void getOrders({required String customerId});

  void getRequest({required String customerId});

  List<OrderModel> get listOrderModel;

  List<OrderModel> get listRequestModel;

  Stream<List<OrderModel>> get listOrderStream;

  Stream<List<OrderModel>> get listRequestStream;
}
