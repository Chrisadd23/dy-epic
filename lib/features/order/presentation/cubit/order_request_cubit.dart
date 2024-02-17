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
      var newList = List<ProductOrder>.from(successState.orderList ?? []);
      switch (sortType) {
        case null:
        case EnumSortProductOrder.sortDate:
          newList.sort((a, b) => b.date.compareTo(a.date));
          newList = newList.map((e) => e.copyWith(hide: false)).toList();
          return emit(successState.copyWith(orderList: newList));
        case EnumSortProductOrder.sortPrice:
          newList.sort((a, b) {
            int compare = a.enumOrderProcess.sortIndex
                .compareTo(b.enumOrderProcess.index);
            if (compare != 0) {
              return compare;
            }
            return a.amount.compareTo(b.amount);
          });
          newList = newList.map((e) => e.copyWith(hide: false)).toList();
          return emit(successState.copyWith(orderList: newList));

        case EnumSortProductOrder.sortInWork:
          newList.sort((a, b) {
            final equal = b.enumOrderProcess.sortIndex
                .compareTo(a.enumOrderProcess.sortIndex);
            if (equal != 0) {
              return equal;
            }
            final dateEqual = b.date.compareTo(a.date);
            if (dateEqual != 0) {
              return dateEqual;
            }
            return b.amount.compareTo(a.amount);
          });
          newList = newList
              .map((e) => e.copyWith(
                  hide: e.enumOrderProcess != EnumOrderProcess.inWork))
              .toList();
        case EnumSortProductOrder.sortFinished:
          newList.sort((a, b) {
            final equal = b.enumOrderProcess.sortIndex
                .compareTo(a.enumOrderProcess.sortIndex);
            if (equal != 0) {
              return equal;
            }
            final dateEqual = b.date.compareTo(a.date);
            if (dateEqual != 0) {
              return dateEqual;
            }
            return b.amount.compareTo(a.amount);
          });
          newList = newList
              .map((e) => e.copyWith(
                  hide: e.enumOrderProcess != EnumOrderProcess.finished))
              .toList();
        case EnumSortProductOrder.sortCanceled:
          newList.sort((a, b) {
            final equal = b.enumOrderProcess.sortIndex
                .compareTo(a.enumOrderProcess.sortIndex);
            if (equal != 0) {
              return equal;
            }
            final dateEqual = b.date.compareTo(a.date);
            if (dateEqual != 0) {
              return dateEqual;
            }
            return b.amount.compareTo(a.amount);
          });
          newList = newList
              .map((e) => e.copyWith(
                  hide: e.enumOrderProcess != EnumOrderProcess.canceledByAdmin))
              .toList();
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
