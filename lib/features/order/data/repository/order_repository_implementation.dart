import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/datasource/order_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

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

  final _failureRequestController = StreamController<Failure>.broadcast();

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
  Stream<Failure> get failure => _failureRequestController.stream;

  StreamSubscription<Either<Failure, List<OrderModel>>>? streamSub;

  @override
  void getCustomerOrders({required String customerId}) {
    streamSub = _orderDatasource
        .getCustomerOrderData(customerId: customerId)
        .listen((event) {
      event.fold((failure) => _failureRequestController.add(failure), (right) {
        _listOrderModel
          ..clear()
          ..addAll(right);
        debugPrint('repository customer request right ==> $_listOrderModel');
        _listOrderModelController.add(listOrderModel);
      });
    });
  }

  @override
  void getOwnerOrders() {
    streamSub = _orderDatasource.getOwnerOrderData().listen((event) {
      event.fold((failure) => _failureRequestController.add(failure), (right) {
        _listOrderModel
          ..clear()
          ..addAll(right);
        debugPrint('repository owner request right ==> $_listOrderModel');
        _listOrderModelController.add(listOrderModel);
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
    streamSub?.cancel();
  }

  @override
  void clearRequestList() {
    _listRequestModel.clear();
  }
}
