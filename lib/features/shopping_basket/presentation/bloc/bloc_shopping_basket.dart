import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/extension/list_extenstion.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket//presentation/bloc/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/repository/shopping_basket_ropository.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BlocShoppingBasket
    extends Bloc<EventShoppingBasket, StateShoppingBasket> {
  final ShoppingBasketRepository shoppingBasketRepository;

  BlocShoppingBasket({required this.shoppingBasketRepository})
      : super(const StateShoppingBasket(
            orderChosenProductList: [], requestChosenProductList: [])) {
    on<EventShoppingBasket>((event, emitState) async {
      await event.when(
        add: (product, timeIndex, orderType) {
          debugPrint("timeIndex ==> $timeIndex -- ");
          if (timeIndex != null) {
            if (orderType == EnumOrderType.bestellung &&
                state.orderChosenProductList
                    .any((element) => element.addedTime == timeIndex)) {
              final newOrderList = state.orderChosenProductList
                  .replaceAndSortProduct(product: product); //Extension

              emitState(state.copyWith(orderChosenProductList: newOrderList));
            } else if (orderType == EnumOrderType.anfrage &&
                state.requestChosenProductList
                    .any((element) => element.addedTime == timeIndex)) {
              final newRequestList = state.requestChosenProductList
                  .replaceAndSortProduct(product: product); //Extension

              emitState(
                  state.copyWith(requestChosenProductList: newRequestList));
            } else if (orderType == EnumOrderType.bestellung) {
              final newOrderList = state.orderChosenProductList
                  .addAndSortProduct(product: product); //Extension
              List<ShoppingBasketProduct> newRequestList =
                  List.from(state.requestChosenProductList)
                    ..removeWhere((element) => element.addedTime == timeIndex)
                    ..sort((a, b) => b.addedTime.compareTo(a.addedTime));

              emitState(state.copyWith(
                  orderChosenProductList: newOrderList,
                  requestChosenProductList: newRequestList));
            } else if (orderType == EnumOrderType.anfrage) {
              final newRequestList = state.requestChosenProductList
                  .addAndSortProduct(product: product); //Extension

              List<ShoppingBasketProduct> newOrderList =
                  List<ShoppingBasketProduct>.from(state.orderChosenProductList)
                    ..removeWhere((element) => element.addedTime == timeIndex)
                    ..sort((a, b) => b.addedTime.compareTo(a.addedTime));

              emitState(state.copyWith(
                  orderChosenProductList: newOrderList,
                  requestChosenProductList: newRequestList));
            }
          } else {
            if (orderType == EnumOrderType.bestellung) {
              final newOrderList =
                  List<ShoppingBasketProduct>.from(state.orderChosenProductList)
                    ..add(product);
              emitState(state.copyWith(orderChosenProductList: newOrderList));
            } else {
              final newRequestList = List<ShoppingBasketProduct>.from(
                  state.requestChosenProductList)
                ..add(product);
              emitState(
                  state.copyWith(requestChosenProductList: newRequestList));
            }
          }
        },
        change: (timeIndex, location) {
          final product = [
            ...state.orderChosenProductList,
            ...state.requestChosenProductList
          ].where((product) => product.addedTime == timeIndex).first;
          final productCategory = EnumCategoryProduct.values
              .where((element) => element.type == product.productType)
              .first;
          final ({ShoppingBasketProduct chosenProduct, int index}) record =
              (chosenProduct: product, index: timeIndex);
          final String routeName =
              _getRouteName(productCategory: productCategory);

          if (location.contains(AppGoRouter.product.title)) {
            if (location.contains(routeName)) {
              getIt<GoRouter>().pushReplacementNamed(routeName, extra: record);
            } else {
              getIt<GoRouter>().goNamed(routeName, extra: record);
            }
          } else {
            getIt<GoRouter>().pop(null);
            if (productCategory == EnumCategoryProduct.workingTable) {
              getIt<GoRouter>().goNamed(routeName, extra: record);
            } else if (productCategory ==
                    EnumCategoryProduct.officeChairNormal ||
                productCategory == EnumCategoryProduct.officeChairHochlehner) {
              getIt<GoRouter>().goNamed(routeName, extra: record);
            } else if (productCategory == EnumCategoryProduct.conferenceChair) {
              getIt<GoRouter>().goNamed(routeName, extra: record);
            }
          }
        },
        remove: (timeIndex) {
          List<ShoppingBasketProduct> orderList =
              List.from(state.orderChosenProductList)
                ..removeWhere((element) => element.addedTime == timeIndex);
          List<ShoppingBasketProduct> requestList =
              List.from(state.requestChosenProductList)
                ..removeWhere((element) => element.addedTime == timeIndex);

          emitState(
            state.copyWith(
                orderChosenProductList: orderList,
                requestChosenProductList: requestList),
          );
        },
        orderList: (enumOrder) {},
        clear: () {
          emitState(state.copyWith(
            orderChosenProductList: [],
            requestChosenProductList: [],
          ));
        },
        send: (customerNumber) async {
          final ShoppingBasketEntity orderShoppingBasketEntity =
              ShoppingBasketEntity(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  userId: customerNumber,
                  status: 0,
                  products: state.orderChosenProductList);

          final ShoppingBasketEntity requestShoppingBasketEntity =
              ShoppingBasketEntity(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  userId: customerNumber,
                  status: 0,
                  products: state.requestChosenProductList);

          try {
            final result = await shoppingBasketRepository.sendOrder(
                order: orderShoppingBasketEntity,
                request: requestShoppingBasketEntity);

            result.fold(
              (failure) => emitState(state.copyWith(failure: failure)),
              (right) => emitState(
                state.copyWith(
                    orderChosenProductList: [], requestChosenProductList: []),
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

  String _getRouteName({required EnumCategoryProduct productCategory}) {
    if (productCategory == EnumCategoryProduct.workingTable) {
      return '${AppGoRouter.arbeitstische.name}/${AppGoRouter.product.title}';
    } else if (productCategory == EnumCategoryProduct.officeChairNormal ||
        productCategory == EnumCategoryProduct.officeChairHochlehner) {
      return '${AppGoRouter.buerostuehle.name}/${AppGoRouter.product.title}';
    } else if (productCategory == EnumCategoryProduct.conferenceChair) {
      return '${AppGoRouter.konferenzstuehle.name}/${AppGoRouter.product.title}';
    } else {
      return AppGoRouter.homePage.name;
    }
  }
}
