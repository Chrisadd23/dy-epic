import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderCubit extends OrderCustomerCubit {
  OrderCubit();

  @override
  Future<void> load({String? customerNumber}) async {
    if (state != const OrderCustomerState.loading()) {
      emit(const OrderCustomerState.loading());
    }

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

          emit(OrderCustomerState.success(orderList: orderList));
        });
      } catch (error) {
        emit(OrderCustomerState.failure(
            failure: Failure.databaseError(error.toString())));
      }
    }
  }
}
