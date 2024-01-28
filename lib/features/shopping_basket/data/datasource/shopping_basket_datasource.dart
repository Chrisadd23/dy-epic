import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

abstract class ShoppingBasketDataSource {
  Future<void> sendOrder({
    required Map<String, dynamic> order,
  });
}

class ShoppingBasketDataSourceImplementation extends ShoppingBasketDataSource {
  ShoppingBasketDataSourceImplementation(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<void> sendOrder({required Map<String, dynamic> order}) async {
    debugPrint("json ==> $order");

    try {
      final collection = _firebaseFirestore.collection("Order");
      await collection.add(order).then(
        (value) {
          debugPrint("Bestellung wurde erfolgreich hinzugefügt");
        },
        onError: (error) => debugPrint("error ==> ${error.toString()}"),
      );
    } catch (e) {
      debugPrint("error ==> ${e.toString()}");
    }
  }
}
