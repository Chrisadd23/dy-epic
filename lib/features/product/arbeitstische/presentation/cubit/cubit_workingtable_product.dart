import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct
    extends Cubit<StateProduct<ArbeitsTischeProduct>> {
  CubitWorkingTableProduct({required this.repositoryProductArbeitstische})
      : super(const StateProduct.loading());

  final RepositoryWorkingTable repositoryProductArbeitstische;

  void load(EnumCategoryWorkingTable? product) {
    if (state != const StateProduct.loading()) {
      emit(const StateProduct.loading());
    }
    final workingTables =
        repositoryProductArbeitstische.getArbeitstischeProduct(product);
    workingTables.fold((failure) {}, (listWorkingTables) async {
      final list = listWorkingTables
          .map((workingTable) => ArbeitsTischeProduct(
              frameColors:
                  Gestell(color: workingTable.frameColors!.color, material: ''),
              picturePath: workingTable.picturePath))
          .toList();
      debugPrint(list.toString());
      emit(StateProduct.success(
          workingTables: list, selectedWorkingTable: list[0]));
    });
  }

  Timer? _timer;

  void increment() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.maybeMap(
          orElse: () => const StateProduct.loading(),
          success: (productOrderCount) => productOrderCount.copyWith(
              productOrderCount: productOrderCount.productOrderCount + 1)));
    });
  }

  void decrement() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.maybeMap(
          orElse: () => const StateProduct.loading(),
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

    emit(state.maybeMap(
        orElse: () => const StateProduct.loading(),
        success: (product) => product.copyWith(
            selectedWorkingTable: product.workingTables
                ?.where((element) => element.frameColors?.color == color)
                .firstOrNull)));
  }
}
