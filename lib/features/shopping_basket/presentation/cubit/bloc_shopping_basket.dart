import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
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
      debugPrint("event ==> $event");
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
            debugPrint("change");
            debugPrint(getIt<GoRouter>().location.split('/').last.toString());

            getIt<GoRouter>().pop(record);
            debugPrint("continue Change");
          }
        },
        remove: (index) {
          debugPrint("remove $index");
          List<ChosenProduct> newList = List.from(state.listChosenProduct);
          newList.removeAt(index);

          final newState = state.copyWith(listChosenProduct: newList);
          debugPrint("newState ==> ${newState.toString()}");
          emitState(newState);
        },
        orderList: (enumOrder) {},
        clear: () {
          final newState = state.copyWith(listChosenProduct: []);
          emitState(newState);
        },
        send: () async {
          try {
            final amount =
                _completAmount(listChosenProduct: state.listChosenProduct);
            final json = await _generateJson(
              chosenProductList: state.listChosenProduct,
              dateTime: DateTime.now(),
              amount: amount,
            );

            await shoppingBasketRepository.sendOrder(order: json);

            emitState(state.copyWith(listChosenProduct: []));
          } catch (e) {
            debugPrint("error ==> ${e.toString()}");
          }
        },
      );
    });
  }

  double _completAmount({required List<ChosenProduct> listChosenProduct}) {
    double amount = 0;

    listChosenProduct.map((order) {
      amount += order.count * order.entityProduct.price;
    }).toList();

    return amount;
  }

  Future<Map<String, dynamic>> _generateJson(
      {required List<ChosenProduct> chosenProductList,
      required DateTime dateTime,
      required double amount}) async {
    final customerNumber = getIt<LoginCubit>().state.mapOrNull(
        loggedIn: (stateLoggedIn) =>
            stateLoggedIn.entityLoginCustomer.customerNumber);

    //debugPrint("customerNumber ==> $customerNumber");
    final querySnapshot = await FirebaseFirestore.instance
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
