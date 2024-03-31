import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CubitProduct<T, E> extends Cubit<StateProduct<E>> {
  CubitProduct() : super(StateProduct<E>());

  Future<void> load({required String productNumber}) async {}

  Timer? _timer;

  StateProduct<E>? dataStateEntity;

  void increment() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.copyWith(productOrderCount: state.productOrderCount + 1));
    });
  }

  void decrement() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.copyWith(
          productOrderCount: state.productOrderCount > 0
              ? state.productOrderCount - 1
              : state.productOrderCount));
    });
  }

  Future<void> reset() async {
    final newState = state.copyWith(productOrderCount: 0, position: null);
    emit(newState);
  }

  void stopCounting() => _timer?.cancel();

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  Future<void> changeProduct(
      {required ChosenProduct order, required int index}) async {
    debugPrint("order : => ${order.toString()} , index : $index");
    // TODO: implement changeProduct
    final newState = state.copyWith(
        productOrderCount: order.count,
        price: order.entityProduct.price,
        product: reworkProductTypeInChangeProduct(order.entityProduct),
        position: index);

    emit(newState);
  }

  @protected
  E? reworkProductTypeInChangeProduct(EntityProduct entityProduct) {
    return entityProduct as E;
  }
}
