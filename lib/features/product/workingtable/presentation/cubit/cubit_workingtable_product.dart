import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket//presentation/bloc/state_shopping_basket.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct extends CubitProduct<CubitWorkingTableProduct> {
  CubitWorkingTableProduct(this._cubitPictures,
      {required this.repositoryProductWorkingTable});

  final RepositoryWorkingTable repositoryProductWorkingTable;
  final CubitPictures _cubitPictures;

  @override
  Future<void> load(
      {String? productNumber,
      ({ChosenProduct chosenProduct, int index})? recordOrder,
      String? color}) async {
    if (recordOrder == null) {
      await repositoryProductWorkingTable
          .getWorkingTableProduct(productNumber)
          .fold((failure) {
        debugPrint("Failure ==> $failure");
        emit(const StateProduct());
      }, (product) async {
        final workingTableAdditionalAttributes =
            await _getWorkingTableAdditionAttributes(
                product: product, selectedColor: color);
        emit(StateProduct(
            productEntity: EntityProduct(
          productCategory: EnumCategoryProduct.workingTable,
          price: product.breiteXTiefe?.firstOrNull?.price ?? 0,
          name: product.name,
          productNumber: product.productNumber,
          attributes: product.attributes,
          workingTableSizeAndColor: workingTableAdditionalAttributes,
        )));
      });
    } else {
      emit(StateProduct(
          productEntity: recordOrder.chosenProduct.entityProduct,
          productOrderCount: recordOrder.chosenProduct.count,
          position: recordOrder.index));
    }
  }

  Future<WorkingTableSizeAndColor?> _getWorkingTableAdditionAttributes(
      {required EntityWorkingTableProduct product,
      String? selectedColor}) async {
    final listPicturePath = product.frameColors
            ?.map((e) => 'product_${product.productNumber}_${e.name}.png')
            .toList() ??
        [];

    try {
      if (listPicturePath.isNotEmpty) {
        await listPicturePath
            .map((picture) async {
              if (!(_cubitPictures.state.containsKey(picture) &&
                  _cubitPictures.state[picture] != null)) {
                final imageBytes =
                    await FirebaseConfiguration.getImageBytes(picture);
                _cubitPictures.addPicture(key: picture, value: imageBytes);
              }
            })
            .toList()
            .wait;
      }
    } catch (error) {
      debugPrint(error.toString());
    }

    final frameColors = product.frameColors
        ?.map((frameColor) => frameColor.copyWith(
            pictureBytes: _cubitPictures.state[
                'product_${product.productNumber}_${frameColor.name}.png']))
        .toList();

    final selectedEntityGestell = selectedColor == null
        ? frameColors?.firstOrNull
        : frameColors
            ?.where((element) => element.color.toString() == selectedColor)
            .firstOrNull;

    return WorkingTableSizeAndColor(
        listEntityGestell: frameColors ?? [],
        selectedEntityGestell: selectedEntityGestell,
        listBreisteUndTiefe: product.breiteXTiefe ?? [],
        selectedBreiteUndTiefe: product.breiteXTiefe?.firstOrNull);
  }
}
