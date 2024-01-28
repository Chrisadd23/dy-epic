import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

abstract class ShoppingBasketDataSource {
  Future<void> sendOrder({
    required List<ChosenProduct> chosenProductList,
    required DateTime dateTime,
    required double amount,
  });
}

class ShoppingBasketDataSourceImplementation extends ShoppingBasketDataSource {
  ShoppingBasketDataSourceImplementation(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<void> sendOrder(
      {required List<ChosenProduct> chosenProductList,
      required DateTime dateTime,
      required double amount}) async {
    final json = await _generateJson(
        chosenProductList: chosenProductList,
        dateTime: dateTime,
        amount: amount);
    debugPrint("json ==> $json");

    try {
      final collection = FirebaseFirestore.instance.collection("Order");
      collection.add(json).then(
        (value) {
          debugPrint("Bestellung wurde erfolgreich hinzugefügt");
        },
        onError: (error) => debugPrint("error ==> ${error.toString()}"),
      );
    } catch (e) {
      debugPrint("error ==> ${e.toString()}");
    }
  }

  Future<Map<String, dynamic>> _generateJson(
      {required List<ChosenProduct> chosenProductList,
      required DateTime dateTime,
      required double amount}) async {
    final customerNumber = getIt<LoginCubit>().state.mapOrNull(
        loggedIn: (stateLoggedIn) =>
            stateLoggedIn.entityLoginCustomer.customerNumber);

    //debugPrint("customerNumber ==> $customerNumber");
    final querySnapshot = await _firebaseFirestore
        .collection("Order")
        .where("customerNumber", isEqualTo: customerNumber)
        .get();

    final docId = querySnapshot.docs.length + 1;

    final orderList = chosenProductList
        .map((e) => {
              "count": e.count,
              "price": e.entityProduct.price,
              "productNumber": e.productNumber,
              "request": e.orderType == EnumOrderType.anfrage
            })
        .toList();

    //debugPrint("orderList ==> $orderList}");
    final orderID = '${customerNumber}_$docId';
    final date = Timestamp.fromDate(dateTime);

    final json = {
      "order_id": orderID,
      "customerNumber": customerNumber,
      "amount": amount,
      "canceledByAdmin": false,
      "canceledByCustomer": false,
      "date": date,
      "finished": false,
      "inWork": true,
      "orderList": orderList
    };

    return json;
  }
}
