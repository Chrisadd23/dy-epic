import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/entity/entity_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct extends Cubit<StateProduct<EntityProduct>> {
  CubitWorkingTableProduct({required this.repositoryProductArbeitstische})
      : super(const StateProduct<EntityProduct>());

  final RepositoryWorkingTable repositoryProductArbeitstische;

  Future<void> load(
      EnumCategoryWorkingTable? product, Map<String, String>? color) async {
    if (state != const StateProduct()) {
      emit(const StateProduct<EntityProduct>());
    }
    final workingTables =
        await repositoryProductArbeitstische.getArbeitstischeProduct(product);

    workingTables.fold((failure) {}, (workingTable) async {
      Map<TableChangeableCharacteristics, dynamic> mapCharacteristics = {};

      debugPrint('listWorkingTables ===> $workingTable');

      if (color != null &&
          color.isNotEmpty &&
          (workingTable.frameColors?.isNotEmpty ?? false)) {
        final frameColor = workingTable.frameColors
            ?.where(
                (tableColor) => tableColor.color.toString() == color['color'])
            .firstOrNull;

        mapCharacteristics[TableChangeableCharacteristics.frameColors] =
            frameColor?.color;
        mapCharacteristics[TableChangeableCharacteristics.picturePath] =
            frameColor?.picturePath;
      } else if (workingTable.frameColors?.isNotEmpty ?? false) {
        mapCharacteristics[TableChangeableCharacteristics.frameColors] =
            workingTable.frameColors?.first.color;
        mapCharacteristics[TableChangeableCharacteristics.picturePath] =
            workingTable.frameColors?.first.picturePath;
      }

      if (workingTable.breiteXTiefe?.isNotEmpty ?? false) {
        mapCharacteristics[TableChangeableCharacteristics.breiteXTiefe] =
            BreiteXTiefe(
                breite: workingTable.breiteXTiefe!.first.breite,
                tiefe: workingTable.breiteXTiefe!.first.tiefe);
      }

      debugPrint(mapCharacteristics.toString());
      StateArbeitsTischeProduct(
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
                pictuePath: gestell.picturePath))
            .toList(),
      );

      emit(StateProduct<EntityProduct>(
          selectedCharacteristics: mapCharacteristics));
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

  void changeColor(Color color) async {
    debugPrint('change Color --< $color');
    final newSelectedCharacteristics =
        Map<Enum, dynamic>.from(state.selectedCharacteristics);

    newSelectedCharacteristics[TableChangeableCharacteristics.frameColors] =
        color;
    newSelectedCharacteristics[
            TableChangeableCharacteristics
                .picturePath] = AppColors
            .black080808 /*product.product?.frameColors
                      ?.where((element) => element.color == color)
                      .firstOrNull
                      ?.pictuePath)*/
        ;
    emit(state.copyWith(selectedCharacteristics: newSelectedCharacteristics));
  }

  void changeBreiteXTiefe(BreiteXTiefe choosenBreiteXTiefe) {
    debugPrint('change Color --< $choosenBreiteXTiefe');
    final newSelectedCharacteristics =
        Map<Enum, dynamic>.from(state.selectedCharacteristics);

    newSelectedCharacteristics[TableChangeableCharacteristics.breiteXTiefe] =
        choosenBreiteXTiefe;
    emit(state.copyWith(selectedCharacteristics: newSelectedCharacteristics));
  }
}
