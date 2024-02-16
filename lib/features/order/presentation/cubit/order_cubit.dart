import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderCustomerState> {
  /*Order(
  orderNumber: "1234_9",
  amount: 629.00,
  inWork: true,
  finished: false,
  canceledByAdmin: false,
  canceledByCustomer: false,
  productInformationList: [
  const ProductInformation(
  request: false,
  count: 1,
  price: 629,
  productNumber: "och88be13",
  productTitle: 'CAMIRO Hochlehner Bürodrehstuhl')
  ]),*/
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
            return ProductOrder(
              orderNumber: orderMap['order_id'],
              amount: double.parse(orderMap['amount'].toString()),
              inWork: orderMap['inWork'],
              finished: orderMap['finished'],
              canceledByAdmin: orderMap['canceledByAdmin'],
              canceledByCustomer: orderMap['canceledByCustomer'],
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
      final newList = List<ProductOrder>.from(successState.orderList ?? []);
      switch (sortType) {
        case null:
        case EnumSortProductOrder.sortDate:
          newList.sort((a, b) => a.date.compareTo(b.date));
          break;
        case EnumSortProductOrder.sortPrice:
          newList.sort((a, b) => a.amount.compareTo(b.amount));
          break;
        case EnumSortProductOrder.sortConditions:
          newList.sort((a, b) => b.finished ? 1 : -1);
          break;
      }
      emit(successState.copyWith(orderList: newList));
    });
  }
}
