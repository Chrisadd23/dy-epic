import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/order/data/datasource/order_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';

class OrderRepositoryImplementation extends OrderRepository {
  OrderRepositoryImplementation(
    this._orderDatasource,
  );

  final OrderDatasource _orderDatasource;

  final List<OrderModel> _listOrderModel = [];
  final List<OrderModel> _listRequestModel = [];

  final _listOrderModelController =
      StreamController<List<OrderModel>>.broadcast();
  final _listRequestModelController =
      StreamController<List<OrderModel>>.broadcast();

  @override
  Stream<List<OrderModel>> get listOrderStream =>
      _listOrderModelController.stream;

  @override
  Stream<List<OrderModel>> get listRequestStream =>
      _listRequestModelController.stream;

  @override
  List<OrderModel> get listOrderModel => _listOrderModel;

  @override
  List<OrderModel> get listRequestModel => _listRequestModel;

  @override
  void getOrders({required String customerId}) {
    _orderDatasource.getOrderData(customerId: customerId).listen((event) {
      event.fold((left) {}, (right) {
        _listOrderModel
          ..clear()
          ..addAll(right);
        _listOrderModelController.add(_listOrderModel);
      });
    });
  }

  @override
  void getRequest({required String customerId}) {
    _orderDatasource.getRequestData(customerId: customerId).listen((event) {
      event.fold((left) {}, (right) {
        _listRequestModel
          ..clear()
          ..addAll(right);
        _listRequestModelController.add(_listRequestModel);
      });
    });
  }

  @override
  void clearOrderList() {
    _listOrderModel.clear();
  }

  @override
  void clearRequestList() {
    _listRequestModel.clear();
  }
}
