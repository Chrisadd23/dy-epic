import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OrderRequestCubit extends Cubit<OrderCustomerState> {
  OrderRequestCubit() : super(const OrderCustomerState.loading());

  Future<void> load({String? customerNumber}) async {
    if (state != const OrderCustomerState.loading()) {
      emit(const OrderCustomerState.loading());
    }
    if (customerNumber != null) {
      try {
        final collectionStream = FirebaseFirestore.instance
            .collection('OrderList')
            .doc('4uKusyoOb8xNXsSwn6KX')
            .collection('request');
        final query =
            collectionStream.where('customerNumber', isEqualTo: customerNumber);

        query.snapshots().listen((docSnapshot) {
          final requestList = docSnapshot.docs.map((document) {
            final data = document.data();
            final enumOrderProcess = _getEnumOrderProcess(data: data);

            return ProductOrder(
              orderNumber: data['request_id'],
              amount: double.parse(data['amount'].toString()),
              productInformationList:
                  _getListProductInformation(data['requestList']),
              date: (data['date'] as Timestamp).toDate(),
              enumOrderProcess: enumOrderProcess,
            );
          }).toList();

          debugPrint('orderRequestList ==> $requestList');
          emit(OrderCustomerState.success(orderList: requestList));
        });
      } catch (error) {
        debugPrint("error ==> error");
        emit(OrderCustomerState.failure(
            failure: Failure.databaseError(error.toString())));
      }
    }
  }

  List<ProductInformation> _getListProductInformation(orderMap) {
    final List<ProductInformation> orderList =
        orderMap.map<ProductInformation>((order) {
      return ProductInformation(
          count: int.parse(order['count'].toString()),
          price: double.parse(order['price'].toString()),
          productNumber: order['productNumber'],
          productTitle: order['productName']);
    }).toList();
    return orderList;
  }

  void sortOrder({EnumSortProductOrder? sortType}) {
    state.mapOrNull(success: (successState) {
      final newList = List<ProductOrder>.from(successState.orderList ?? []);
      switch (sortType) {
        case null:
        case EnumSortProductOrder.sortDate:
          newList.sort((a, b) => b.date.compareTo(a.date));
          break;
        case EnumSortProductOrder.sortPrice:
          newList.sort((a, b) =>
              b.enumOrderProcess.sortIndex <= a.enumOrderProcess.sortIndex &&
                      b.amount <= a.amount
                  ? 1
                  : -1);
          break;
        case EnumSortProductOrder.sortConditions:
          newList.sort((a, b) =>
              b.enumOrderProcess.sortIndex <= a.enumOrderProcess.sortIndex
                  ? 1
                  : -1);
          break;
      }
      emit(successState.copyWith(orderList: newList));
    });
  }

  EnumOrderProcess _getEnumOrderProcess({required Map<String, dynamic> data}) {
    if (data['inWork']) {
      return EnumOrderProcess.inWork;
    }
    if (data['finished']) {
      return EnumOrderProcess.finished;
    }
    if (data['canceledByAdmin']) {
      return EnumOrderProcess.canceledByAdmin;
    } else {
      return EnumOrderProcess.canceledByCustomer;
    }
  }
}
