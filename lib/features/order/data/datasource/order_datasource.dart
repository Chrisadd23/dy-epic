import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';

abstract class OrderDatasource {
  Stream<Either<Failure, List<OrderModel>>> getOrderData(
      {required String customerId});

  Stream<Either<Failure, List<OrderModel>>> getRequestData(
      {required String customerId});
}

class OrderDatasourceImplementation extends OrderDatasource {
  @override
  Stream<Either<Failure, List<OrderModel>>> getOrderData(
      {required String customerId}) {
    return FirebaseFirestore.instance
        .collection('Order')
        .where('userId', isEqualTo: customerId)
        .snapshots()
        .map((docSnapshot) {
      try {
        final orderList = docSnapshot.docs
            .map((query) => OrderModel.fromJson(query.data()))
            .toList();

        return Right(orderList);
      } catch (error) {
        return Left(Failure.databaseError(error.toString()));
      }
    });
  }

  @override
  Stream<Either<Failure, List<OrderModel>>> getRequestData(
      {required String customerId}) {
    return FirebaseFirestore.instance
        .collection('Request')
        .where('userId', isEqualTo: customerId)
        .snapshots()
        .map((docSnapshot) {
      try {
        final orderList = docSnapshot.docs
            .map((query) => OrderModel.fromJson(query.data()))
            .toList();

        return Right(orderList);
      } catch (error) {
        return Left(Failure.databaseError(error.toString()));
      }
    });
  }
}
