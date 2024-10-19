import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/get_request_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:flutter/material.dart';

class RequestCubit extends OrderCustomerCubit {
  RequestCubit(this._getRequestUseCase, this._orderRepository) {
    _streamSubscription =
        _orderRepository.listRequestStream.listen((listRequestModel) {
      state.maybeMap(
          orElse: () => emit(OrderCustomerState.success(
              orderList: listRequestModel.map((e) => e.toEntity()).toList())),
          success: (successState) {
            debugPrint('sortType orderCubit: ${successState.sortType}');
            emit(successState.copyWith(
                orderList: getSortedOrderEntity(
                    listOrderEntity:
                        listRequestModel.map((e) => e.toEntity()).toList(),
                    sortType: successState.sortType),
                sortType: successState.sortType));
          });
    }, onError: (error) {
      emit(OrderCustomerState.failure(
          failure: Failure.databaseError(error.toString())));
    });
  }

  final GetRequestUseCase _getRequestUseCase;
  final OrderRepository _orderRepository;

  late final StreamSubscription<List<OrderModel>> _streamSubscription;

  @override
  Future<void> load(
      {String? customerNumber, required UserType userType}) async {
    if (customerNumber != null) {
      try {
        if (_orderRepository.listRequestModel.isEmpty) {
          debugPrint("activate getRequestUseCase");
          _getRequestUseCase(customerId: customerNumber);
        } else {
          emit(OrderCustomerState.success(
              orderList: _orderRepository.listRequestModel
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
    // TODO: implement close
    _streamSubscription.cancel();
    return super.close();
  }
}
