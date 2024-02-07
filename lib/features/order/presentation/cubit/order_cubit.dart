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
    if (state != const OrderCustomerState.loading()) {
      emit(const OrderCustomerState.loading());
    }

    if (customerNumber != null) {
      final collectionStream = FirebaseFirestore.instance.collection('Order');
      final query =
          collectionStream.where('customerNumber', isEqualTo: customerNumber);
      query.snapshots().listen((docSnapshot) {
        debugPrint("docSnapshot ==> 500");
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
          );
        }).toList();
        emit(OrderCustomerState.success(orderList: orderList));
      });
    }
  }

  List<ProductInformation> _getListProductInformation(orderMap) {
    debugPrint("orderMap ==> $orderMap");
    final List<ProductInformation> orderList =
        orderMap.map<ProductInformation>((order) {
      debugPrint("order ==> $order");
      return ProductInformation(
          request: order['request'],
          count: int.parse(order['count'].toString()),
          price: double.parse(order['price'].toString()),
          productNumber: order['productNumber'],
          productTitle: order['productName']);
    }).toList();
    return orderList;
  }
}
