import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket//presentation/bloc/state_shopping_basket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CubitProduct<T> extends Cubit<StateProduct> {
  CubitProduct() : super(const StateProduct());

  Future<void> load({required String productNumber}) async {}

  Timer? _timer;

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
        productEntity: order.entityProduct,
        position: index);

    emit(newState);
  }

  void changeColorAttribute({required EntityGestell entityGestell}) {
    final selectedEntity = state.productEntity?.workingTableAdditionalAttributes
        ?.copyWith(selectedEntityGestell: entityGestell);
    emit(
      state.copyWith(
        productEntity: (state.productEntity
            ?.copyWith(workingTableAdditionalAttributes: selectedEntity)),
      ),
    );
  }

  void changeBreiteUndTiefeAttribute(
      {required EntityBreiteUndTiefe entityBreiteUndTiefe}) {
    final selectedEntity = state.productEntity?.workingTableAdditionalAttributes
        ?.copyWith(selectedBreiteUndTiefe: entityBreiteUndTiefe);
    emit(
      state.copyWith(
        productEntity: (state.productEntity?.copyWith(
            workingTableAdditionalAttributes: selectedEntity,
            price: entityBreiteUndTiefe.price)),
      ),
    );
  }
}
