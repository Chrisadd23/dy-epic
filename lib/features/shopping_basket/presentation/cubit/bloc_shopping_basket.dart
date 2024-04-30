import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/repository/shopping_basket_ropository.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BlocShoppingBasket
    extends Bloc<EventShoppingBasket, StateShoppingBasket> {
  final ShoppingBasketRepository shoppingBasketRepository;

  BlocShoppingBasket({required this.shoppingBasketRepository})
      : super(const StateShoppingBasket(listChosenProduct: [])) {
    on<EventShoppingBasket>((event, emitState) async {
      await event.when(
        add: (product, position) {
          debugPrint("product ==> ${product.toString()}");
          List<ChosenProduct> newList = List.from(state.listChosenProduct);
          if (position != null && newList.elementAtOrNull(position) != null) {
            newList[position] = product;
          } else {
            newList.add(product);
          }
          final newState = state.copyWith(listChosenProduct: newList);
          emitState(newState);
        },
        change: (index) {
          final order = state.listChosenProduct.elementAt(index);
          final ({ChosenProduct chosenProduct, int index}) record =
              (chosenProduct: order, index: index);

          if (!getIt<GoRouter>().location.contains('produkt')) {
            getIt<GoRouter>().pop(null);
            if (order.entityProduct.productCategory ==
                EnumCategoryProduct.workingTable) {
              getIt<GoRouter>().goNamed(
                  '${AppGoRouter.arbeitstische.name}/${AppGoRouter.product.name}',
                  extra: record);
            } else if (order.entityProduct.productCategory ==
                    EnumCategoryProduct.officeChairNormal ||
                order.entityProduct.productCategory ==
                    EnumCategoryProduct.officeChairHochlehner) {
              getIt<GoRouter>().goNamed(
                  '${AppGoRouter.buerostuehle.name}/${AppGoRouter.product.name}',
                  extra: record);
            } else if (order.entityProduct.productCategory ==
                EnumCategoryProduct.conferenceChair) {
              getIt<GoRouter>().goNamed(
                  '${AppGoRouter.konferenzstuehle.name}/${AppGoRouter.product.name}',
                  extra: record);
            }
          } else {
            debugPrint(getIt<GoRouter>().location.split('/').last.toString());

            getIt<GoRouter>().pop(record);
          }
        },
        remove: (index) {
          List<ChosenProduct> newList = List.from(state.listChosenProduct)
            ..removeAt(index);

          final newState = state.copyWith(listChosenProduct: newList);

          emitState(newState);
        },
        orderList: (enumOrder) {},
        clear: () {
          final newState = state.copyWith(listChosenProduct: []);
          emitState(newState);
        },
        send: (customerNumber) async {
          try {
            final json = await _generateJson(
              chosenProductList: state.listChosenProduct,
              customerNumber: customerNumber,
            );

            final result =
                await shoppingBasketRepository.sendOrder(order: json);

            result.fold(
              (failure) => emitState(state.copyWith(failure: failure)),
              (right) => emitState(
                state.copyWith(listChosenProduct: []),
              ),
            );
          } catch (e) {
            emitState(
              state.copyWith(
                failure: Failure.message(
                  e.toString(),
                ),
              ),
            );
          }
        },
        deleteFailureMessage: () {
          emitState(state.copyWith(failure: null));
        },
      );
    });
  }

  double _completeAmount({required List<Map<String, dynamic>> orderList}) {
    double amount = 0;

    orderList
        .map((product) => amount += product['price'] * product['count'])
        .toList();

    return amount;
  }

  Future<Map<String, dynamic>> _generateJson(
      {required List<ChosenProduct> chosenProductList,
      required String customerNumber}) async {
    final timestamp = DateTime.now().millisecondsSinceEpoch;

    final date = Timestamp.fromDate(
      DateTime.now(),
    );

    final orderJson = _generateOrderJson(
        chosenProductList: chosenProductList,
        customerNumber: customerNumber,
        timestamp: timestamp,
        date: date);

    final requestJson = _generateRequestJson(
        chosenProductList: chosenProductList,
        customerNumber: customerNumber,
        timestamp: timestamp,
        date: date);

    final json = {
      "order": orderJson,
      "request": requestJson,
    };

    return json;
  }

  Map<String, dynamic> _generateOrderJson(
      {required List<ChosenProduct> chosenProductList,
      required String customerNumber,
      required Timestamp date,
      required int timestamp}) {
    final orderID = "$timestamp-$customerNumber";
    final orderList = chosenProductList
        .where((element) => element.orderType == EnumOrderType.bestellung)
        .toList()
        .map((e) => {
              "count": e.count,
              "price": e.entityProduct.price,
              "productNumber": e.productNumber,
              "productName": e.name,
            })
        .toList();

    final orderAmount = _completeAmount(orderList: orderList);

    return {
      "order_id": orderID,
      "customerNumber": customerNumber,
      "amount": orderAmount,
      "canceledByAdmin": false,
      "canceledByCustomer": false,
      "date": date,
      "finished": false,
      "inWork": true,
      "orderList": orderList
    };
  }

  Map<String, dynamic> _generateRequestJson(
      {required List<ChosenProduct> chosenProductList,
      String? customerNumber,
      required int timestamp,
      required Timestamp date}) {
    final requestList = chosenProductList
        .where((element) => element.orderType == EnumOrderType.anfrage)
        .toList()
        .map((e) => {
              "count": e.count,
              "price": e.entityProduct.price,
              "productNumber": e.productNumber,
              "productName": e.name,
            })
        .toList();

    final requestAmount = _completeAmount(orderList: requestList);

    final requestID =
        "${timestamp.toString().split('').reversed.join('')}-$customerNumber";

    return {
      "request_id": requestID,
      "customerNumber": customerNumber,
      "amount": requestAmount,
      "canceledByAdmin": false,
      "canceledByCustomer": false,
      "date": date,
      "finished": false,
      "inWork": true,
      "requestList": requestList
    };
  }
}
