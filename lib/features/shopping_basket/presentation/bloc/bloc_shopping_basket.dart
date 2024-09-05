import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/extension/double.dart';
import 'package:app_flutter_produkt_bestellen/core/extension/list_extenstion.dart';
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
  BlocShoppingBasket(
    this._shoppingBasketRepository,
  ) : super(const StateShoppingBasket(orderChosenProductList: [])) {
    on<EventShoppingBasket>((event, emitState) async {
      await event.when(
        add: (category, count, categoryEntity, entityCorePicture, timeIndex) {
          debugPrint("add product");
          final listOrderProduct = List.of(state.orderChosenProductList);
          if (timeIndex == null) {
            listOrderProduct.add(ShoppingBasketProduct(
                categoryEntity: categoryEntity,
                addedTime: DateTime.now().millisecondsSinceEpoch,
                productCount: count,
                completeAmount:
                    (count * categoryEntity.normalPrice!).getCurrency()));
            emitState(state.copyWith(orderChosenProductList: listOrderProduct));
          } else {
            if (state.orderChosenProductList.isEmpty ||
                !state.orderChosenProductList
                    .any((order) => order.addedTime == timeIndex)) {
              listOrderProduct.add(ShoppingBasketProduct(
                  categoryEntity: categoryEntity,
                  addedTime: DateTime.now().millisecondsSinceEpoch,
                  productCount: count,
                  completeAmount:
                      (count * categoryEntity.normalPrice!).getCurrency()));
              emitState(
                  state.copyWith(orderChosenProductList: listOrderProduct));
            } else {
              final newOrderList = state.copyWith(
                orderChosenProductList:
                    state.orderChosenProductList.replaceAndSortProduct(
                  product: ShoppingBasketProduct(
                    categoryEntity: categoryEntity,
                    addedTime: timeIndex,
                    productCount: count,
                    completeAmount:
                        (count * categoryEntity.normalPrice!).getCurrency(),
                  ),
                ),
              );
              emitState(newOrderList);
            }
          }
        },
        change: (timeIndex, location) {
          final product = state.orderChosenProductList
              .where((product) => product.addedTime == timeIndex)
              .first;

          final ({ShoppingBasketProduct chosenProduct, int index}) record =
              (chosenProduct: product, index: timeIndex);

          if (location.contains(AppGoRouter.product.title)) {
            getIt<GoRouter>()
                .pushReplacementNamed(AppGoRouter.product.name, extra: record);
          } else {
            getIt<GoRouter>().pop(null);
            getIt<GoRouter>().goNamed(AppGoRouter.product.name, extra: record);
          }
        },
        remove: (timeIndex) {
          List<ShoppingBasketProduct> orderList =
              List.from(state.orderChosenProductList)
                ..removeWhere((element) => element.addedTime == timeIndex);

          emitState(
            state.copyWith(
              orderChosenProductList: orderList,
            ),
          );
        },
        orderList: (enumOrder) {},
        clear: () {
          emitState(state.copyWith(
            orderChosenProductList: [],
          ));
        },
        send: (customerNumber) async {
          final ShoppingBasketEntity orderShoppingBasketEntity =
              ShoppingBasketEntity(
                  id: '${state.orderChosenProductList.hashCode}-$customerNumber',
                  userId: customerNumber,
                  status: 0,
                  products: state.orderChosenProductList,
                  sendDate: DateTime.now().millisecondsSinceEpoch);

          try {
            final result = await _shoppingBasketRepository.sendOrder(
              order: orderShoppingBasketEntity,
            );

            result.fold(
              (failure) => emitState(state.copyWith(failure: failure)),
              (right) => emitState(
                state.copyWith(orderChosenProductList: []),
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

  final ShoppingBasketRepository _shoppingBasketRepository;
}
