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

  void load(EnumCategoryWorkingTable? product, Map<String, String>? color) {
    if (state != const StateProduct.loading()) {
      emit(const StateProduct.loading());
    }
    final workingTables =
        repositoryProductArbeitstische.getArbeitstischeProduct(product);

    workingTables.fold((failure) {}, (workingTable) async {
      Map<TableChangeableCharacteristics, dynamic> mapCharacteristics = {};

      debugPrint('listWorkingTables ===> $workingTable');

      if (color != null &&
          color.isNotEmpty &&
          (workingTable.frameColors?.isNotEmpty ?? false)) {
        debugPrint('if color : color == $color');
        Color? choosenColor = workingTable.frameColors
            ?.where(
                (tableColor) => tableColor.color.toString() == color['color'])
            .firstOrNull
            ?.color;
        debugPrint('color == $choosenColor');
        mapCharacteristics[TableChangeableCharacteristics.frameColors] =
            choosenColor;
      } else if (workingTable.frameColors?.isNotEmpty ?? false) {
        debugPrint('else if color');
        mapCharacteristics[TableChangeableCharacteristics.frameColors] =
            workingTable.frameColors?.first.color;
      }

      if (workingTable.breiteXTiefe?.isNotEmpty ?? false) {
        mapCharacteristics[TableChangeableCharacteristics.breiteXTiefe] =
            BreiteXTiefe(
                breite: workingTable.breiteXTiefe!.first.breite,
                tiefe: workingTable.breiteXTiefe!.first.tiefe);
      }

      debugPrint(mapCharacteristics.toString());
      final product = ArbeitsTischeProduct(
          name: workingTable.name,
          breiteXTiefe: workingTable.breiteXTiefe
              ?.map(
                (breitXTiefe) => BreiteXTiefe(
                    breite: breitXTiefe.breite, tiefe: breitXTiefe.tiefe),
              )
              .toList(),
          frameColors: workingTable.frameColors
              ?.map((gestell) => Gestell(
                    color: gestell.color,
                    name: gestell.name,
                    material: gestell.material,
                  ))
              .toList(),
          picturePath: workingTable.picturePath);

      emit(StateProduct.success(
          product: product, selectedCharacteristics: mapCharacteristics));
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

  void changeColor(Color color) async {
    debugPrint('change Color --< $color');

    emit(state.maybeMap(
        orElse: () => const StateProduct.loading(),
        success: (product) {
          final newSelectedCharacteristics =
              Map<Enum, dynamic>.from(product.selectedCharacteristics);

          newSelectedCharacteristics[
              TableChangeableCharacteristics.frameColors] = color;

          return product.copyWith(
              selectedCharacteristics: newSelectedCharacteristics);
        }));
  }
}
