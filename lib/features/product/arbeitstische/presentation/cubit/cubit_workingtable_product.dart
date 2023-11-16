import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_workingtable.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct extends Cubit<StateWorkingTable> {
  CubitWorkingTableProduct({required this.repositoryProductArbeitstische})
      : super(const StateWorkingTable());

  final RepositoryWorkingTable repositoryProductArbeitstische;

  void load() {
    final workingTables =
        repositoryProductArbeitstische.getArbeitstischeProduct();
    workingTables.fold((failure) {}, (listWorkingTables) {
      final list = listWorkingTables
          .map((workingTable) => ArbeitsTischeProduct(
              frameColors: Gestell(
                  color: workingTable.frameColors!.color, material: '')))
          .toList();
      emit(state.copyWith(workingTables: list));
    });
  }

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

  void stopCounting() => _timer?.cancel();

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  void changeColor(Color? color) {
    debugPrint('change Color --< $color');
    final product = state.workingTables
        ?.where((element) => element.frameColors?.color == color)
        .firstOrNull;

    if (product != null) {
      emit(state.copyWith(selectedWorkingTable: product));
    }
  }
}
