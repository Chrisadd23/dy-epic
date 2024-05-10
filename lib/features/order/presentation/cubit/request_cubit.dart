import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderRequestCubit extends OrderCustomerCubit {
  OrderRequestCubit();

  @override
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
            final enumOrderProcess = getEnumOrderProcess(data: data);

            return ProductOrder(
              orderNumber: data['request_id'],
              amount: double.parse(data['amount'].toString()),
              productInformationList:
                  getListProductInformation(data['requestList']),
              date: (data['date'] as Timestamp).toDate(),
              enumOrderProcess: enumOrderProcess,
            );
          }).toList();

          emit(OrderCustomerState.success(orderList: requestList));
        });
      } catch (error) {
        emit(OrderCustomerState.failure(
            failure: Failure.databaseError(error.toString())));
      }
    }
  }
}
