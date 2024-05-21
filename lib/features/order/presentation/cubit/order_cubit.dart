import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/get_order_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:flutter/cupertino.dart';

class OrderCubit extends OrderCustomerCubit {
  OrderCubit(this._getOrderUseCase, this._orderRepository) {
    _streamSubscription =
        _orderRepository.listOrderStream.listen((listOrderModel) {
      state.maybeMap(
          success: (successState) {
            debugPrint('sortType orderCubit: ${successState.sortType}');
            emit(successState.copyWith(
                orderList: getSortedOrderEntity(
                    listOrderEntity:
                        listOrderModel.map((e) => e.toEntity()).toList(),
                    sortType: successState.sortType),
                sortType: successState.sortType));
          },
          orElse: () => emit(OrderCustomerState.success(
              orderList: listOrderModel.map((e) => e.toEntity()).toList())));
    }, onError: (error) {
      emit(OrderCustomerState.failure(
          failure: Failure.databaseError(error.toString())));
    });
  }

  final GetOrderUseCase _getOrderUseCase;
  final OrderRepository _orderRepository;

  late final StreamSubscription<List<OrderModel>> _streamSubscription;

  @override
  Future<void> load({String? customerNumber}) async {
    if (customerNumber != null) {
      try {
        if (_orderRepository.listOrderModel.isEmpty) {
          debugPrint("activate getOrderUseCase");
          _getOrderUseCase(customerId: customerNumber);
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
    return super.close();
  }
}
