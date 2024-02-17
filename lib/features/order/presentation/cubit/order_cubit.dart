import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderCustomerState> {
  OrderCubit() : super(const OrderCustomerState.loading());

  Future<void> load({String? customerNumber}) async {
    debugPrint("start test test");
    if (state != const OrderCustomerState.loading()) {
      emit(const OrderCustomerState.loading());
    }

    debugPrint('customerNumber ==> $customerNumber');
    if (customerNumber != null) {
      try {
        final collectionStream = FirebaseFirestore.instance
            .collection('OrderList')
            .doc('8ZwDCBhDGrOMF8w7wS7Y')
            .collection('order');
        final query =
            collectionStream.where('customerNumber', isEqualTo: customerNumber);
        query.snapshots().listen((docSnapshot) {
          final orderList = docSnapshot.docs.map((e) {
            final orderMap = e.data();
            final enumOrderProcess = _getEnumOrderProcess(data: orderMap);
            return ProductOrder(
              orderNumber: orderMap['order_id'],
              amount: double.parse(orderMap['amount'].toString()),
              enumOrderProcess: enumOrderProcess,
              productInformationList:
                  _getListProductInformation(orderMap['orderList']),
              date: (orderMap['date'] as Timestamp).toDate(),
            );
          }).toList();

          debugPrint('orderList ==> $orderList');

          emit(OrderCustomerState.success(orderList: orderList));
        });
      } catch (error) {
        debugPrint("error ==>$error");
        emit(OrderCustomerState.failure(
            failure: Failure.databaseError(error.toString())));
      }
    }
  }

  List<ProductInformation> _getListProductInformation(orderMap) {
    final List<ProductInformation> orderList =
        orderMap.map<ProductInformation>((order) {
      debugPrint("order ==> $order");
      return ProductInformation(
          count: int.parse(order['count'].toString()),
          price: double.parse(order['price'].toString()),
          productNumber: order['productNumber'],
          productTitle: order['productName']);
    }).toList();
    return orderList;
  }

  @override
  Future<void> close() {
    FirebaseFirestore.instance.terminate();
    return super.close();
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
