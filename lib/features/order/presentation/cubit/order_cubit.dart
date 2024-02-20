import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class OrderCubit extends OrderCustomerCubit {
  OrderCubit();

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
            final enumOrderProcess = getEnumOrderProcess(data: orderMap);
            return ProductOrder(
              orderNumber: orderMap['order_id'],
              amount: double.parse(orderMap['amount'].toString()),
              enumOrderProcess: enumOrderProcess,
              productInformationList:
                  getListProductInformation(orderMap['orderList']),
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
}
