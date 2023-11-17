import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_workingtable.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct extends Cubit<StateWorkingTable> {
  CubitWorkingTableProduct({required this.repositoryProductArbeitstische})
      : super(const StateWorkingTable.loading());

  final RepositoryWorkingTable repositoryProductArbeitstische;

  void load() {
    if (state != const StateWorkingTable.loading()) {
      emit(const StateWorkingTable.loading());
    }
    final workingTables =
        repositoryProductArbeitstische.getArbeitstischeProduct();
    workingTables.fold((failure) {}, (listWorkingTables) async {
      final list = listWorkingTables
          .map((workingTable) => ArbeitsTischeProduct(
              frameColors: Gestell(
                  color: workingTable.frameColors!.color, material: '')))
          .toList();
      debugPrint(list.toString());
      emit(StateWorkingTable.success(workingTables: list));
    });
  }

  Timer? _timer;

  void increment() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.maybeMap(
          orElse: () => const StateWorkingTable.loading(),
          success: (productOrderCount) => productOrderCount.copyWith(
              productOrderCount: productOrderCount.productOrderCount + 1)));
    });
  }

  void decrement() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.maybeMap(
          orElse: () => const StateWorkingTable.loading(),
          success: (productOrderCount) => productOrderCount.copyWith(
              productOrderCount: productOrderCount.productOrderCount > 0
                  ? productOrderCount.productOrderCount - 1
                  : productOrderCount.productOrderCount)));
    });
  }

  void stopCounting() => _timer?.cancel();

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  void changeColor(Color? color) {
    debugPrint('change Color --< $color');

    final productState = state.maybeMap(
        orElse: () => const StateWorkingTable.loading(),
        success: (product) => product.copyWith(
            selectedWorkingTable: product.workingTables
                ?.where((element) => element.frameColors?.color == color)
                .firstOrNull));

    if (productState != const StateWorkingTable.loading()) {
      emit(productState);
    }
  }
}
