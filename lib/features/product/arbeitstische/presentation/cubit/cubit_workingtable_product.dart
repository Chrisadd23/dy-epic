import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct
    extends CubitProduct<CubitWorkingTableProduct, EntityWorkingTableProduct> {
  CubitWorkingTableProduct({required this.repositoryProductArbeitstische});

  final RepositoryWorkingTable repositoryProductArbeitstische;

  @override
  Future<void> load(
      {String? productNumber,
      ({ChosenProduct chosenProduct, int index})? recordOrder,
      String? color}) async {
    // TODO: implement load
    debugPrint("load product ==> $productNumber");
    if (recordOrder == null) {
      final product =
          repositoryProductArbeitstische.getWorkingTableProduct(productNumber);
      emit(const StateProduct<EntityWorkingTableProduct>());
    }
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
