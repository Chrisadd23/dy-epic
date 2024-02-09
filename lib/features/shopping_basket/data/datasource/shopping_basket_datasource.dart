import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class ShoppingBasketDataSource {
  Future<Either<Failure, bool>> sendOrder({
    required Map<String, dynamic> order,
  });
}

class ShoppingBasketDataSourceImplementation extends ShoppingBasketDataSource {
  ShoppingBasketDataSourceImplementation(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, bool>> sendOrder(
      {required Map<String, dynamic> order}) async {
    debugPrint("json ==> $order");

    Failure? failure;
    final List<Map<String, dynamic>> orderList = order['order']['orderList'];
    final List<Map<String, dynamic>> requestList =
        order['request']['requestList'];

    try {
      if (orderList.isNotEmpty) {
        final collection = _firebaseFirestore
            .collection("OrderList")
            .doc()
            .collection('order');
        await collection.add(order['order']).then(
              (value) => true,
              onError: (error) =>
                  failure = Failure.databaseError(error.toString()),
            );
        if (failure != null) {
          return Left(failure!);
        }
      }
      if (requestList.isNotEmpty) {
        final collection = _firebaseFirestore
            .collection("OrderList")
            .doc()
            .collection('request');
        await collection.add(order['request']).then(
              (value) => true,
              onError: (error) =>
                  failure = Failure.databaseError(error.toString()),
            );
        if (failure != null) {
          return Left(failure!);
        }
      }
      return const Right(true);
    } catch (e) {
      debugPrint("error ==> ${e.toString()}");
      return Left(
        Failure.databaseError(
          e.toString(),
        ),
      );
    }
  }
}
