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

    try {
      final collection = _firebaseFirestore.collection("Order");
      final result = await collection.add(order).then(
            (value) => true,
            onError: (error) =>
                failure = Failure.databaseError(error.toString()),
          );
      if (failure == null && result) {
        return const Right(true);
      } else {
        return Left(Failure.databaseError(failure.toString()));
      }
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
