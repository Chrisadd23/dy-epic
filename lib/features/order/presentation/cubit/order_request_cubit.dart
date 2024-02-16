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

            return ProductOrder(
              orderNumber: data['request_id'],
              amount: double.parse(data['amount'].toString()),
              inWork: data['inWork'],
              finished: data['finished'],
              canceledByAdmin: data['canceledByAdmin'],
              canceledByCustomer: data['canceledByCustomer'],
              productInformationList:
                  _getListProductInformation(data['requestList']),
              date: (data['date'] as Timestamp).toDate(),
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

  void sortOrder({EnumSortProductOrder? sortType}) {}
}
