import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/get_customer_order_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/get_owner_order_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:flutter/cupertino.dart';

class OrderCubit extends OrderCustomerCubit {
  OrderCubit(
    this._getCustomerOrderUseCase,
    this._orderRepository,
    this._getOwnerOrderUseCase,
  ) {
    _streamSubscription =
        _orderRepository.listOrderStream.listen((listOrderModel) {
      debugPrint("cubit listener order model => $listOrderModel");
      emit(
        OrderCustomerState.success(
          orderList: listOrderModel.map((order) => order.toEntity()).toList(),
        ),
      );
    }, onError: (error) {
      emit(OrderCustomerState.failure(
          failure: Failure.databaseError(error.toString())));
    });

    _failureStreamSubscription = _orderRepository.failure.listen(
        (failure) => emit(OrderCustomerState.failure(failure: failure)));
  }

  final GetCustomerOrderUseCase _getCustomerOrderUseCase;
  final GetOwnerOrderUseCase _getOwnerOrderUseCase;
  final OrderRepository _orderRepository;

  late final StreamSubscription<List<OrderModel>> _streamSubscription;
  late final StreamSubscription<Failure> _failureStreamSubscription;

  @override
  Future<void> load(
      {String? customerNumber, required UserType userType}) async {
    if (userType == UserType.owner) {
      try {
        if (_orderRepository.listOrderModel.isEmpty) {
          debugPrint("activate getOrderUseCase");
          _getOwnerOrderUseCase();
        } else {
          emit(OrderCustomerState.success(
              orderList: _orderRepository.listOrderModel
                  .map((e) => e.toEntity())
                  .toList()));
        }
      } catch (error) {
        debugPrint("error ==> ${error.toString()}");
      }
    } else if (customerNumber != null) {
      try {
        if (_orderRepository.listOrderModel.isEmpty) {
          debugPrint("activate getOrderUseCase");
          _getCustomerOrderUseCase(customerId: customerNumber);
        } else {
          emit(OrderCustomerState.success(
              orderList: _orderRepository.listOrderModel
                  .map((e) => e.toEntity())
                  .toList()));
        }
      } catch (error) {
        debugPrint("error ==> ${error.toString()}");
      }
    }
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    _failureStreamSubscription.cancel();
    return super.close();
  }
}
